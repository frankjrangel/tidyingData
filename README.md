#Course proyect for Coursera course "Getting and Cleaning Data"
####Student: Francisco Rangel

The purpose of this proyect was to make an R script that generates a tidy dataset according to the following instructions:

1.Merge the training and the test sets to create one data set.  
2.Extract only the measurements on the mean and standard deviation for each measurement.  
3.Use descriptive activity names to name the activities in the data set.  
4.Appropriately label the data set with descriptive variable names.  
5.From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.  

The data used for this proyect was  the Human Activity Recognition Using Smartphones Data Set
More info at 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

You can get the data here: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The data cleaning process made to Human Activity Recognition Using Smartphones Dataset was done with run_analysis.R script.
For it to work you must run the script from the folder where the files are extracted.
After the script runs you will get the tidy data as tidy_data.txt in the same folder the data files were extracted.

To read the file to R use read.table("tidy_data.txt", header=TRUE)

The tidying process and more info can be found in CodeBook.md
