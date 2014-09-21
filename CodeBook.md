###Data cleaning process in run_analysis.R script

1. Downloaded files from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
2. Extracted files to folder "Proyect"  
3. Set working directory in RStudio to "Proyect"  
4. Read necesary files and store them in variables the following way:  
    ```R
    test_x <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")  
    test_y <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")  
    test_subject <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")  

    train_x <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")  
    train_y <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")  
    train_subject <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")  
    ```
    Variables description:  
    test_x: Data frame containing measurements from test dataset  
    test_y: Data frame containing activities for the measurements in test_x  
    test_subject: Data frame containing subjects for the measurements in test_x  
    train_x: Data frame containing measurements from train dataset  
    train_y: Data frame containing activities for the measurements in train_x  
    train_subject: Data frame containing subjects for the measurements in train_x  
    
5. Read variable names from features.txt and set up list to set column names later:  
    ```R
    variables <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/features.txt")  
    variables <- as.character(variables[,2]) #Get column with variable names  
    variables[562] <- "subject"  
    variables[563] <- "activity"  
    ```
6. Merge data frames test_x, test_subject and test_y by columns to get complete test data set  
7. Same step as 6 but with train_x, train_subject and train_y to get complete train data set  
8. Merge complete test data frame with complete train data set to get the complete data set
9. Set column names  
10. 
6.
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

mean(): Mean value
std(): Standard deviation

5.Details about the data: columns in which specific variables can be found, whether they are character or numeric, and if numeric, what format.

3.Technical information about the files themselves: number of observations, record length, number of records per observation, etc.
