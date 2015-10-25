run_analysis <- function() {

  # Step 1. Merge the training and the test sets to create one data set.
  # --------------------------------------------------------------------
  
  # Read training data
  trainX <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
  trainY <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
  # Combine training labelsand training set by columns
  train <- cbind(trainY, trainX)
  
  # Read test data
  testX <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
  testY <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)
  # Combine test labels and test set by columns
  test <- cbind(testY, testX)
  
  # Combine training data and test data by rows
  dataset <- rbind(train,test)
  
  
  # Step 2. Extract only the measurements on the mean and standard deviation for each measurement. 
  # ----------------------------------------------------------------------------------------------
  
  # Read features
  features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)
  
  # Columns with mean or std in feature name
  columns <- grep("\\bmean\\b|\\bstd\\b",features$V2)
  # First column is the added label => increase columns by 1
  columns <- columns + 1
  # Add the label column
  columns <- c(1, columns)
  
  # Select activity label column and columns with mean or std -values
  dataset <- dataset[columns]
  
  
  # Step 3. Use descriptive activity names to name the activities in the data set  
  # -----------------------------------------------------------------------------
  
  # Read activity names
  activity <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)
  
  
  #testSubject <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)

  #trainSubject <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
  
  
  
}