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
10. Extract from this complete data set the measurements on the mean and standard deviation for each measurement  
11. Get average of each variable for each activity and each subject and store in new data set  
12. Change activity numbers 1, 2, 3, 4, 5, 6 for names "Walking", "Walking upstairs", "Walking downstairs", "Sitting", "Standing" and "Laying" respectively  
13. Print out tidy data set as tidy_data.txt file

###Info about tidy_data.txt

Number of observations: 150  
Number of columns: 81

Columns and Variable names  
1   tBodyAcc-mean()-X  
2   tBodyAcc-mean()-Y  
3   tBodyAcc-mean()-Z  
4   tBodyAcc-std()-X  
5   tBodyAcc-std()-Y  
6   tBodyAcc-std()-Z  
7   tGravityAcc-mean()-X  
8   tGravityAcc-mean()-Y  
9   tGravityAcc-mean()-Z  
10  tGravityAcc-std()-X  
11  tGravityAcc-std()-Y  
12  tGravityAcc-std()-Z  
13  tBodyAccJerk-mean()-X  
14  tBodyAccJerk-mean()-Y  
15  tBodyAccJerk-mean()-Z  
16  tBodyAccJerk-std()-X  
17  tBodyAccJerk-std()-Y  
18  tBodyAccJerk-std()-Z  
19  tBodyGyro-mean()-X  
20  tBodyGyro-mean()-Y  
21  tBodyGyro-mean()-Z  
22  tBodyGyro-std()-X  
23  tBodyGyro-std()-Y  
24  tBodyGyro-std()-Z  
25  tBodyGyroJerk-mean()-X  
26  tBodyGyroJerk-mean()-Y  
27  tBodyGyroJerk-mean()-Z  
28  tBodyGyroJerk-std()-X  
29  tBodyGyroJerk-std()-Y  
30  tBodyGyroJerk-std()-Z  
31  tBodyAccMag-mean()  
32  tBodyAccMag-std()  
33  tGravityAccMag-mean()  
34  tGravityAccMag-std()  
35  tBodyAccJerkMag-mean()  
36  tBodyAccJerkMag-std()  
37  tBodyGyroMag-mean()  
38  tBodyGyroMag-std()  
39  tBodyGyroJerkMag-mean()  
40  tBodyGyroJerkMag-std()  
41  fBodyAcc-mean()-X  
42  fBodyAcc-mean()-Y  
43  fBodyAcc-mean()-Z  
44  fBodyAcc-std()-X  
45  fBodyAcc-std()-Y  
46  fBodyAcc-std()-Z  
47  fBodyAcc-meanFreq()-X  
48  fBodyAcc-meanFreq()-Y  
49  fBodyAcc-meanFreq()-Z  
50  fBodyAccJerk-mean()-X  
51  fBodyAccJerk-mean()-Y  
52  fBodyAccJerk-mean()-Z  
53  fBodyAccJerk-std()-X  
54  fBodyAccJerk-std()-Y  
55  fBodyAccJerk-std()-Z  
56  fBodyAccJerk-meanFreq()-X  
57  fBodyAccJerk-meanFreq()-Y  
58  fBodyAccJerk-meanFreq()-Z  
59  fBodyGyro-mean()-X  
60  fBodyGyro-mean()-Y  
61  fBodyGyro-mean()-Z  
62  fBodyGyro-std()-X  
63  fBodyGyro-std()-Y  
64  fBodyGyro-std()-Z  
65  fBodyGyro-meanFreq()-X  
66  fBodyGyro-meanFreq()-Y  
67  fBodyGyro-meanFreq()-Z  
68  fBodyAccMag-mean()  
69  fBodyAccMag-std()  
70  fBodyAccMag-meanFreq()  
71  fBodyBodyAccJerkMag-mean()  
72  fBodyBodyAccJerkMag-std()  
73  fBodyBodyAccJerkMag-meanFreq()  
74  fBodyBodyGyroMag-mean()  
75  fBodyBodyGyroMag-std()  
76  fBodyBodyGyroMag-meanFreq()  
77  fBodyBodyGyroJerkMag-mean()  
78  fBodyBodyGyroJerkMag-std()  
79  fBodyBodyGyroJerkMag-meanFreq()  
80  subject  
81  activity   



