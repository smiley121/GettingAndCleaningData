# An R script for the Getting and Cleaning Data Coursera course.
# Download and unzip the data sets from 
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# to the same directory as this script.
# This script: 
# * Merges the training and the test sets to create one data set.
# * Extracts only the measurements on the mean and standard deviation for each 
#   measurement. 
# * Uses descriptive activity names to name the activities in the data set
# * Appropriately labels the data set with descriptive variable names. 
# * Creates a second, independent tidy data set with the average of each variable 
#   for each activity and each subject.

# Check if dplyr installed, and install it if it isn't

if ("dplyr" %in% row.names(installed.packages())  == FALSE) 
        install.packages("dplyr") 

# Load the dplyr library

library(dplyr)

# load the various training and test data

subject_train <- read.table("train/subject_train.txt")
y_train <- read.table("train/y_train.txt")
x_train <- read.table("train/x_train.txt")

subject_test <- read.table("test/subject_test.txt")
y_test <- read.table("test/y_test.txt")
x_test <- read.table("test/x_test.txt")

# load the feature labels

features <- read.table("features.txt", stringsAsFactors=FALSE)

# load the activity names

activities <- read.table("activity_labels.txt")

# combine the training data into a single dataframe, do the same thing for the 
# test data

train <- bind_cols(subject_train,y_train,x_train)
test <- bind_cols(subject_test,y_test,x_test)

# combine the training and test dataframe into a combined dataframe

combined <- rbind(train,test)

# label the columns, using unique versions of the names in the features file. 

colnames(combined) <- c("subject", "activity", make.unique(features$V2))

# create a new dataset, using just the measurement means and standard deviations
# note that we're not including the meanFrequency weighted averages here, as we're 
# asked only to include means and standard deviations of *measurements*

dataset <- select(combined,contains("Subject"),contains("Activity"),contains("mean()"),contains("std()"))

# label the activities correctly

dataset$activity <- factor(dataset$activity, levels = activities$V1, 
                           labels = activities$V2)

# a little tidying up of column labels is needed, particularly if we were to do 
# subsequent analysis on the tidy data

columns <- colnames(dataset)

for (i in 1:length(columns)) 
{
        columns[i] = gsub("\\()","",columns[i])
        columns[i] = gsub("-std","StdDev",columns[i])
        columns[i] = gsub("-mean","Mean",columns[i])
        columns[i] = gsub("^(t)","time",columns[i])
        columns[i] = gsub("^(f)","freq",columns[i])
        columns[i] = gsub("-","",columns[i])
}

colnames(dataset) = columns

# group the data by activity and subject

dataset <- group_by(dataset, activity, subject)

# create a new independent data frame in which we give the mean of the means and
# standard deviations for each measurement, for each subject and activity.

averages <- summarise_each(dataset, funs(mean))

# finally save this tidy dataset to the working directory

write.table(averages, "averages.txt", row.name = FALSE)
