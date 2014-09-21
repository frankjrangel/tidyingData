#Getting the data to merge

test_x <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
test_y <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")
test_subject <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")

train_x <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
train_y <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")
train_subject <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")

#Setting up variables for column names

variables <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/features.txt")
variables <- as.character(variables[,2]) #Get column with variable names

#Add subject and activity

variables[562] <- "subject"
variables[563] <- "activity"

#Merging the data

data_test <- cbind(test_x,test_subject,test_y)
data_train <- cbind(train_x,train_subject,train_y)
data <- rbind(data_train,data_test)

colnames(data) <- variables #Set column names

#Getting mean and standard deviation measurements

mean_col <- grep("mean", variables)
std_col <- grep("std", variables)

means <- data[,mean_col]
stds <- data[,std_col]

data_columns <- sort(append(mean_col, std_col))
data_columns <- append(data_columns, c(562,563))
data <- data[,data_columns]

#Gettting last data set

tidy_data <- data.frame()
x <- 1

for (n in 1:30) {
  for(r in 1:5) {
    subject <- paste("subject", n, r, sep="_")
    assign(subject, colMeans(data[data$subject == n & data$activity == r, 1:79]))
    tidy_data <- rbind(tidy_data, get(subject))
    tidy_data[x,80] <- n
    tidy_data[x,81] <- r
    x <- x + 1
  }
}

#Set column names
colnames(tidy_data) <- colnames(data)

#Change activity names

for (i in 1:length(tidy_data[,1])) {
  if(tidy_data[i,81] == 1){
    tidy_data[i,81] <- "Walking"
  }else if(tidy_data[i,81] == 2){
    tidy_data[i,81] <- "Walking upstairs"
  }else if(tidy_data[i,81] == 3){
    tidy_data[i,81] <- "Walking downstairs"
  }else if(tidy_data[i,81] == 4){
    tidy_data[i,81] <- "Sitting"
  }else if(tidy_data[i,81] == 5){
    tidy_data[i,81] <- "Standing"
  }else if(tidy_data[i,81] == 6){
    tidy_data[i,81] <- "Lying"
  }
}

write.table(tidy_data, "tidy_data.txt", row.name=FALSE)
