# Codebook

> This book is a code that describes the data sources, data, variables, and any changes or work that you performed to clean the data. Also describes how to implement the steps run_analysis.R transformations.

## CodeBook for data sets produced by run_analysis.R

> Author: Costa, S. (https://github.com/sgcosta/Getting-and-Cleaning-Data-Course-Project)

> Codebook was generated on 2014-07-27 01:38:12 during the same process that generated the dataset. 

## Data source

> This dataset is derived from the "Human Activity Recognition Using Smartphones Data Set" which was originally made avaiable here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
> * Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Data set information
> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data [1].

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain [1]. 

## Attribute information
 
> For each record in the dataset it is provided [1]: 
> * Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
> * Triaxial Angular velocity from the gyroscope. 
> * A 561-feature vector with time and frequency domain variables. 
> * Its activity label. 
> * An identifier of the subject who carried out the experiment.

## The data

> The dataset includes the following files [1]:

File Name             | Description
----------------------|------------
'README.txt'          |
'features_info.txt'   | Shows information about the variables used on the feature vector
'features.txt'        | List of all features
'activity_labels.txt' | Links the class labels with their activity name
'train/X_train.txt'   | Training set
'train/y_train.txt'   | Training labels
'test/X_test.txt'     | Test set
'test/y_test.txt'     | Test labels
'train/subject_train.txt' | Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30
'train/Inertial Signals/total_acc_x_train.txt' | The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis
'train/Inertial Signals/body_acc_x_train.txt' | The body acceleration signal obtained by subtracting the gravity from the total acceleration.
'train/Inertial Signals/body_gyro_x_train.txt' | The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

## Transformation details

> There are 5 parts:
> 1. Merges the training and the test sets to create one data set.
> 2. Extracts only the measurements on the mean and standard deviation for each measurement.
> 3. Uses descriptive activity names to name the activities in the data set
> 4. Appropriately labels the data set with descriptive activity names.
> 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## How `run_analysis.R` implements the above steps:

> * Checks if the file exists, otherwise it downloads;
> * Checks if the file has already been extracted to the directory;
> * Load both test and train data;
> * Load the features and activity labels;
> * Extract the mean and standard deviation column names and data;
> * Process the data;
> * Merge and creates data set: 
> * The result is saved as "./tidy-UCI-HAR-dataset-AVG.txt", a 180x68 data table (181 with column name), where as before, the first column contains subject IDs, the second column contains activity names (see below), and then the averages for each of the 66 attributes are in columns 3...68. There are 30 subjects and 6 activities, thus 180 rows in this data set with averages.

## Columns for the tidy set of data

1. **Subject**: ID indicating the subject from whom data was collected 
2. **Activity**: Activity being performed 
3. "tBodyAcc-mean-X" 
4. "tBodyAcc-mean-Y" 
5. "tBodyAcc-mean-Z" 
6. "tBodyAcc-std-X" 
7. "tBodyAcc-std-Y"
8. "tBodyAcc-std-Z" 
9. "tGravityAcc-mean-X" 
10. "tGravityAcc-mean-Y"
11. "tGravityAcc-mean-Z"
12. "tGravityAcc-std-X"
13. "tGravityAcc-std-Y"
14. "tGravityAcc-std-Z"
15. "tBodyAccJerk-mean-X" 
16. "tBodyAccJerk-mean-Y" 
17. "tBodyAccJerk-mean-Z"
18. "tBodyAccJerk-std-X" 
19. "tBodyAccJerk-std-Y"
20. "tBodyAccJerk-std-Z"
21. "tBodyGyro-mean-X" 
22. "tBodyGyro-mean-Y" 
23. "tBodyGyro-mean-Z"
24. "tBodyGyro-std-X" 
25. "tBodyGyro-std-Y"
26. "tBodyGyro-std-Z" 
27. "tBodyGyroJerk-mean-X" 
28. "tBodyGyroJerk-mean-Y" 
29. "tBodyGyroJerk-mean-Z" 
30. "tBodyGyroJerk-std-X"
31. "tBodyGyroJerk-std-Y" 
32. "tBodyGyroJerk-std-Z"
33. "tBodyAccMag-mean" 
34. "tBodyAccMag-std"
35. "tGravityAccMag-mean" 
36. "tGravityAccMag-std" 
37. "tBodyAccJerkMag-mean" 
38. "tBodyAccJerkMag-std" 
39. "tBodyGyroMag-mean" 
40. "tBodyGyroMag-std"
41. "tBodyGyroJerkMag-mean" 
42. "tBodyGyroJerkMag-std" 
43. "fBodyAcc-mean-X" 
44. "fBodyAcc-mean-Y"
45. "fBodyAcc-mean-Z" 
46. "fBodyAcc-std-X" 
47. "fBodyAcc-std-Y" 
48. "fBodyAcc-std-Z" 
49. "fBodyAccJerk-mean-X" 
50. "fBodyAccJerk-mean-Y" 
51. "fBodyAccJerk-mean-Z" 
52. "fBodyAccJerk-std-X" 
53. "fBodyAccJerk-std-Y" 
54. "fBodyAccJerk-std-Z" 
55. "fBodyGyro-mean-X" 
56. "fBodyGyro-mean-Y" 
57. "fBodyGyro-mean-Z" 
58. "fBodyGyro-std-X" 
59. "fBodyGyro-std-Y"
60. "fBodyGyro-std-Z" 
61. "fBodyAccMag-mean" 
62. "fBodyAccMag-std" 
63. "fBodyBodyAccJerkMag-mean"
64. "fBodyBodyAccJerkMag-std" 
65. "fBodyBodyGyroMag-mean" 
66. "fBodyBodyGyroMag-std" 
67. "fBodyBodyGyroJerkMag-mean" 
68. "fBodyBodyGyroJerkMag-std"

## References
> [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
