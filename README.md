#Course proyect for Coursera course "Getting and Cleaning Data"
##Student: Francisco Rangel

The data used for this proyect was  the Human Activity Recognition Using Smartphones Data Set
More info at 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

You can get the data here: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The data cleaning process made to Human Activity Recognition Using Smartphones Dataset was done with run_analysis.R script.
For it to work you must run the script from the folder where the files are extracted.
After the script runs you will get the tidy data as tidy_data.txt in the same folder the data files were extracted

To read the file to R use read.table("tidy_data.txt", header=TRUE)
