Codebook
========
This is a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data.

## CodeBook for Data Sets produced by run_analysis.R

Author: Sérgio Costa (https://github.com/sgcosta/Getting-and-Cleaning-Data-Course-Project)

Codebook was generated on 2014-07-27 01:38:12 during the same process that generated the dataset. 

## Data Source

This dataset is derived from the "Human Activity Recognition Using Smartphones Data Set" which was originally made avaiable here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
* Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## The data

The dataset includes the following files:

File name             | Description
----------------------|------------
'README.txt'          |
'features_info.txt'   | Shows information about the variables used on the feature vector
'features.txt'        | List of all features
'activity_labels.txt' | Links the class labels with their activity name
'train/X_train.txt'   | Training set
'train/y_train.txt'   | Training labels
'test/X_test.txt'     | Test set
'test/y_test.txt'     | Test labels

## Variable list and descriptions

Variable name    | Description
-----------------|------------
subject          | ID the subject who performed the activity for each window sample. Its range is from 1 to 30.
activity         | Activity name
featDomain       | Feature: Time domain signal or frequency domain signal (Time or Freq)
featInstrument   | Feature: Measuring instrument (Accelerometer or Gyroscope)
featAcceleration | Feature: Acceleration signal (Body or Gravity)
featVariable     | Feature: Variable (Mean or SD)
featJerk         | Feature: Jerk signal
featMagnitude    | Feature: Magnitude of the signals calculated using the Euclidean norm
featAxis         | Feature: 3-axial signals in the X, Y and Z directions (X, Y, or Z)
featCount        | Feature: Count of data points used to compute `average`
featAverage      | Feature: Average of each variable for each activity and each subject
