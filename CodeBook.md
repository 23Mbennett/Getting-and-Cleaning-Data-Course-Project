## Introduction
This is the CodeBook for the Getting and Cleaning Data Course Project.

## Raw Data
The data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 

A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The raw dataset included the following main files:

* features.txt: List of all variables.
* activity_labels.txt: Contains all activity names.
* X_train.txt / X_test.txt: Contains all measurements obtained during the experiment.
* y_train.txt / y_test.txt: Contains the labels.
* subject_train.txt / subject_test.txt: Identify the subject that performed the activity

## Cleaning Process
To get from the Raw Data to the Tidy Data the following transformations were made. 
These transformations can be executed with the script "run_analysis.R".
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Variables
* x_train: Contains the dataof X_train.txt
* y_train: Contains the data of y_train.txt
* subject_train: Contains the data of subject_train.txt
* x_test: Contains the data of X_test.txt
* y_test: Contains the data of y_test.txt
* subject_test: Contains the data of subject_test.txt
* features: Contains the data of features.txt
* activity_labels: Contains the data of activity_labels.tx
* train: This Dataset is resulted of merge the data of y_train, subject_train and x_train
* test: This Dataset is resulted of merge the data of y_test, subject_test and x_test
* all: This Dataset is resulted of merge the data of train and test
* extract: This array contains the positions that match with mean or std variable 
* mean_std: This Dataset contains the measurements on the mean and standard deviation for each measurements
* TidyDataSet: This Dataset contains all sorted and final data 

## Tidy Data
The end result is shown in the file TidyDataSet.txt. The following are the variables: 
* subject_Id: The ID of the test subject
* activity_Id: The type of activity performed. The activities are: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING.
* Measurements: 
tBodyAccMeanX
tBodyAccMeanY
tBodyAccMeanZ
tBodyAccStdX
tBodyAccStdY
tBodyAccStdZ
tGravityAccMeanX
tGravityAccMeanY
tGravityAccMeanZ
tGravityAccStdX
tGravityAccStdY
tGravityAccStdZ
tBodyAccJerkMeanX
tBodyAccJerkMeanY
tBodyAccJerkMeanZ
tBodyAccJerkStdX
tBodyAccJerkStdY
tBodyAccJerkStdZ
tBodyGyroMeanX
tBodyGyroMeanY
tBodyGyroMeanZ
tBodyGyroStdX
tBodyGyroStdY
tBodyGyroStdZ
tBodyGyroJerkMeanX
tBodyGyroJerkMeanY
tBodyGyroJerkMeanZ
tBodyGyroJerkStdX
tBodyGyroJerkStdY
tBodyGyroJerkStdZ
tBodyAccMagMean
tBodyAccMagStd
tGravityAccMagMean
tGravityAccMagStd
tBodyAccJerkMagMean
tBodyAccJerkMagStd
tBodyGyroMagMean
tBodyGyroMagStd
tBodyGyroJerkMagMean
tBodyGyroJerkMagStd
fBodyAccMeanX
fBodyAccMeanY
fBodyAccMeanZ
fBodyAccStdX
fBodyAccStdY
fBodyAccStdZ
fBodyAccMeanFreqX
fBodyAccMeanFreqY
fBodyAccMeanFreqZ
fBodyAccJerkMeanX
fBodyAccJerkMeanY
fBodyAccJerkMeanZ
fBodyAccJerkStdX
fBodyAccJerkStdY
fBodyAccJerkStdZ
fBodyAccJerkMeanFreqX
fBodyAccJerkMeanFreqY
fBodyAccJerkMeanFreqZ
fBodyGyroMeanX
fBodyGyroMeanY
fBodyGyroMeanZ
fBodyGyroStdX
fBodyGyroStdY
fBodyGyroStdZ
fBodyGyroMeanFreqX
fBodyGyroMeanFreqY
fBodyGyroMeanFreqZ
fBodyAccMagMean
fBodyAccMagStd
fBodyAccMagMeanFreq
fBodyBodyAccJerkMagMean
fBodyBodyAccJerkMagStd
fBodyBodyAccJerkMagMeanFreq
fBodyBodyGyroMagMean
fBodyBodyGyroMagStd
fBodyBodyGyroMagMeanFreq
fBodyBodyGyroJerkMagMean
fBodyBodyGyroJerkMagStd
fBodyBodyGyroJerkMagMeanFreq
