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
