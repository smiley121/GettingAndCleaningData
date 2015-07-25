# Getting and clearning data course project

This repo is a submission for the Coursera Getting and Cleaning Data project assignment. It creates a [tidy](http://vita.had.co.nz/papers/tidy-data.pdf) data set of means and standard deviations for various accelerometer and other measurements obtained from Samsubg Galaxy S smartphones, from 30 subjects engaged in six different activities. Further details are available at [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The R script (run_analysis.R) does five things, as required:

1. Merges training and test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

There are three files here:

* readme.md, (this document) which provides an overview of the project
* codebook.md, a codebok describing the variables and the transformations that have been performed
* run_analysis.R, the R script which performs steps as above, which includes comments describing the operations performed

## Preparation

The data should be downloaded from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and unzipped to the working directory where the run_analysis.R script is stored.

We use the [dplyr](https://cran.rstudio.com/web/packages/dplyr/) package here, for speed and to make the script more readable. The package is installed if it's not already available. 

## Step 1

The subject, activity and measurement data are loaded for both the training and test data sets. Feature and activity names are also loaded for subsequent use.
Subject, activity and measurements are combined into a dataframe for the training and for the test data sets.
These are then combined into a single dataframe.

## Step 2

We label the variables using unique versions of the feature names given. We then extract only those features including 'mean()' or 'std()' as we're looking for just the mean and standard deviations of accelerometer and other measurements. Note that this omits meanFrequency weighted averages here, as we're asked only to include means and standard deviations of *measurements*

## Step 3

We replace the numeric levels 1-6 for activities with descriptive names, taken from the supplied activity_labels.txt file.

## Step 4

We tidy up the names of features, dropping punctuation, capitalising Mean and StdDev, replacing inital t and f with time and frequency. Not only does this make the data easier to read, but seems necessary if subsequent analysis by feature was intended.

## Step 5

We create a new, independent dataframe derived from the dataframe at step 4, grouping data by activity and subject, then calculating the mean of each variable (ie the means and standard deviations of the measurements) for each activity and subject.
This dataframe is saved as a text file, averages.txt to the working directory.










