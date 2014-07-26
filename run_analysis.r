
# Source of data for the project:
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
# You should create one R script called run_analysis.R that does the following. 
# This R script does the following:

  if (!require("data.table")) {
    install.packages("data.table")
  }
  
  require("data.table")
  
  # File to Download
  fileURL <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
  
  # Local Data File
  dataFileZIP <- "./getdata-projectfiles-UCI-HAR-Dataset.zip"
  
  # Diretory Dataset
  dirFile <- "./UCI HAR Dataset"
  
  # Target csv Tidy Files
  tidyDataFileAVG <- "./tidy-UCI-HAR-AVG-dataset.csv"
  
  # Data File downloading
  if (file.exists(dataFileZIP) == FALSE) {
      download.file(fileURL, destfile = dataFileZIP)
    }
  
  # Uncompress Data File
  if (file.exists(dirFile) == FALSE) {
    unzip(dataFileZIP)
  }
  
  # 1. Merges the training and the test sets to create one data set:
  x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
  X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
  y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
  y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)
  subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
  subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)

  #combines data table (train vs test) by rows
  x <- rbind(x_train, X_test)
  y <- rbind(y_train, y_test)
  s <- rbind(subject_train, subject_test)

  # 2. Extracts only the measurements on the mean and standard deviation for each measurement.
  # read features labels
  features <- read.table("./UCI HAR Dataset/features.txt")
  # names to features column
  names(features) <- c('feat_id', 'feat_name')
  # search for matches to argument mean or standard deviation (sd)  within each element of a character vector
  index_features <- grep("-mean\\(\\)|-std\\(\\)", features$feat_name) 
  x <- x[, index_features] 
  # replaces all matches of a string features ("")
  names(x) <- gsub("\\(|\\)", "", (features[index_features, 2]))

  # 3. Uses descriptive activity names to name the activities in the data set
  # 4. Appropriately labels the data set with descriptive activity names.
  # Read activity labels
  activities <- read.table("./UCI HAR Dataset/activity_labels.txt")
  # Names to activities column
  names(activities) <- c('act_id', 'act_name')
  y[, 1] = activities[y[, 1], 2]

  names(y) <- "Activity"
  names(s) <- "Subject"

  # combines data table by columns
  tidyDataSet <- cbind(s, y, x)
  
  # 5. Creates a 2nd, independent tidy data set with the average of each variable for each activity and each subject.
  p <- tidyDataSet[, 3:dim(tidyDataSet)[2]] 
  tidyDataAVGSet <- aggregate(p,list(tidyDataSet$Subject, tidyDataSet$Activity), mean)

  # created csv (tidy data set AVG) in Diretory
  write.csv(tidyDataAVGSet, tidyDataFileAVG)


