Codebook
========
This is a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data.

CodeBook for Data Sets produced by run_analysis.R
-------------------------------------------------

Author: Sérgio Costa (https://github.com/sgcosta/Getting-and-Cleaning-Data-Course-Project)

Codebook was generated on 2014-07-27 01:38:12 during the same process that generated the dataset. 

Data source
-----------
This dataset is derived from the "Human Activity Recognition Using Smartphones Data Set" which was originally made avaiable here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
*Original description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones



Variable list and descriptions
------------------------------
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







Requirements for the Project
----------------------------

> The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

> One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

> http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

> Here are the data for the project: 

> https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

> You should create one R script called run_analysis.R that does the following. 
> Merges the training and the test sets to create one data set.
> Extracts only the measurements on the mean and standard deviation for each measurement. 
> Uses descriptive activity names to name the activities in the data set
> Appropriately labels the data set with descriptive variable names. 
> Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


How to run the Project
----------------------

1. Open the R script `run_analysis.r` (using a text editor).
2. Run the R script `run_analysis.r`.
3. Validate the directory ". / HAR UCI Dataset", e verify if the CSV file, called "tidy-UCI-HAR-AVG-dataset.csv" was created.

Outputs Produced
----------------
* Tidy dataset file `tidy-UCI-HAR-AVG-dataset.csv` (tab-delimited text)
* Codebook file `codebook.md` (Markdown)
