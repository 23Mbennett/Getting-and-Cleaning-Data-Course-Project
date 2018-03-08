# This script transforms the raw data to tidy data according to the instructions given for this project.

library(plyr)
library(reshape2)

# 0. Preparation: Downloading, unzip & read files

if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")

unzip(zipfile="./data/Dataset.zip",exdir="./data")

x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
features <- read.table('./data/UCI HAR Dataset/features.txt')
activity_labels = read.table('./data/UCI HAR Dataset/activity_labels.txt')

# Attention, this is the answer to the 4 point: 
# 4. Appropriately labeling the data set with descriptive variable names.

colnames(x_train) <- features[,2] 
colnames(y_train) <-"activityId"
colnames(subject_train) <- "subjectId"
colnames(x_test) <- features[,2] 
colnames(y_test) <- "activityId"
colnames(subject_test) <- "subjectId"
colnames(activity_labels) <- c("activityId","activityType")

# 1. Merges the training and the test sets to create one data set.

train <- cbind(y_train, subject_train, x_train)
test <- cbind(y_test, subject_test, x_test)
all <- rbind(train, test)

# 2. Extracting only the measurements on the mean and standard deviation for each measurement

extract <- grep("mean|std", features[,2])
mean_std <- all[extract,]

# 3. Uses descriptive activity names to name the activities in the data set:

all$activityId <- factor(all$activityId, labels= activity_labels[,2])

# 4. Appropriately labeling the data set with descriptive variable names.
# I already did it above!!

# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject:

TidyDataSet <- melt(all, id= c("subjectId","activityId"))
TidyDataSet <- dcast(TidyDataSet, subjectId+activityId ~ variable, mean)
write.table(TidyDataSet, "TidyDataSet.txt", row.name=FALSE, quote=FALSE)
