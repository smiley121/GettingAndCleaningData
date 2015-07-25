# Averages obtained from Human Activity Recognition Using Smartphones Dataset

Original data, and *much of this commentary* provided by 
*Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.*
*Smartlab - Non Linear Complex Systems Laboratory*
*DITEN - University degli Studi di Genova.*
*Via Opera Pia 11A, I-16145, Genoa, Italy.*
*activityrecognition@smartlab.ws*
*www.smartlab.ws*

*The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the team captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments were video-recorded to label the data manually. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.*

*The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.* 

To produce the average measurements data submitted for the project, the training and test data are recombined to form a single dataset, from which a subset of mean and standard deviation variables are used. The mean of each of these for each activity and subject is calculated. 

The following variables are included:

* activity - One of six activities, WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
* subject - identifies the subject who performed the activity for each average. Its range is from 1 to 30. 

The means of a further 66 measurements for each activity and subject.

*The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals (prefix time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAcc-XYZ and timeGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.* 

*Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccJerk-XYZ and timeBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccMag, timeGravityAccMag, timeBodyAccJerkMag, timeBodyGyroMag, timeBodyGyroJerkMag).* 

*Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing freqBodyAcc-XYZ, freqBodyAccJerk-XYZ, freqBodyGyro-XYZ, freqBodyAccJerkMag, freqBodyGyroMag, freqBodyGyroJerkMag.*

*These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.*

The mean of each measurement (as below) from all the time windows available for each activity and subject is calculated.

* timeBodyAccMeanX
* timeBodyAccMeanY
* timeBodyAccMeanZ
* timeGravityAccMeanX
* timeGravityAccMeanY
* timeGravityAccMeanZ
* timeBodyAccJerkMeanX
* timeBodyAccJerkMeanY
* timeBodyAccJerkMeanZ
* timeBodyGyroMeanX
* timeBodyGyroMeanY
* timeBodyGyroMeanZ
* timeBodyGyroJerkMeanX
* timeBodyGyroJerkMeanY
* timeBodyGyroJerkMeanZ
* timeBodyAccMagMean
* timeGravityAccMagMean
* timeBodyAccJerkMagMean
* timeBodyGyroMagMean
* timeBodyGyroJerkMagMean
* freqBodyAccMeanX
* freqBodyAccMeanY
* freqBodyAccMeanZ
* freqBodyAccJerkMeanX
* freqBodyAccJerkMeanY
* freqBodyAccJerkMeanZ
* freqBodyGyroMeanX
* freqBodyGyroMeanY
* freqBodyGyroMeanZ
* freqBodyAccMagMean
* freqBodyBodyAccJerkMagMean
* freqBodyBodyGyroMagMean
* freqBodyBodyGyroJerkMagMean
* timeBodyAccStdDevX
* timeBodyAccStdDevY
* timeBodyAccStdDevZ
* timeGravityAccStdDevX
* timeGravityAccStdDevY
* timeGravityAccStdDevZ
* timeBodyAccJerkStdDevX
* timeBodyAccJerkStdDevY
* timeBodyAccJerkStdDevZ
* timeBodyGyroStdDevX
* timeBodyGyroStdDevY
* timeBodyGyroStdDevZ
* timeBodyGyroJerkStdDevX
* timeBodyGyroJerkStdDevY
* timeBodyGyroJerkStdDevZ
* timeBodyAccMagStdDev
* timeGravityAccMagStdDev
* timeBodyAccJerkMagStdDev
* timeBodyGyroMagStdDev
* timeBodyGyroJerkMagStdDev
* freqBodyAccStdDevX
* freqBodyAccStdDevY
* freqBodyAccStdDevZ
* freqBodyAccJerkStdDevX
* freqBodyAccJerkStdDevY
* freqBodyAccJerkStdDevZ
* freqBodyGyroStdDevX
* freqBodyGyroStdDevY
* freqBodyGyroStdDevZ
* freqBodyAccMagStdDev
* freqBodyBodyAccJerkMagStdDev
* freqBodyBodyGyroMagStdDev
* freqBodyBodyGyroJerkMagStdDev

Note that *features are normalized and bounded within [-1,1]*, ie they are ratios and thus without units.

License:
========
Use of this dataset is acknowledged by referencing the following publication [1] 

*[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012*

*This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.*
