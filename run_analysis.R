#Create data directory in working directory if it doesn't exist, download zip file from web 
#and read train and test sets, features and labels into R

if (!file.exists("data")) {
  dir.create("data")
}

fileurl <-  "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destfile <- "./data/dataset.zip"
download.file(fileurl, destfile, method = "curl")

X_train <- read.table(unz(destfile, "UCI HAR Dataset/train/X_train.txt"), quote="\"", comment.char="")
y_train <- read.table(unz(destfile, "UCI HAR Dataset/train/y_train.txt"), quote="\"", comment.char="")
subject_train <- read.table(unz(destfile, "UCI HAR Dataset/train/subject_train.txt"), quote="\"", comment.char="")
X_test <- read.table(unz(destfile, "UCI HAR Dataset/test/X_test.txt"), quote="\"", comment.char="")
y_test <- read.table(unz(destfile, "UCI HAR Dataset/test/y_test.txt"), quote="\"", comment.char="")
subject_test <- read.table(unz(destfile, "UCI HAR Dataset/test/subject_test.txt"), quote="\"", comment.char="")
features <- read.table(unz(destfile, "UCI HAR Dataset/features.txt"), quote="\"", comment.char="")
activity_labels <- read.table(unz(destfile, "UCI HAR Dataset/activity_labels.txt"), quote="\"", comment.char="")

#Rename column headers using features, subject and activity 

names(X_train) <- features$V2
names(X_test) <- features$V2
names(subject_train) <- "subject"
names(subject_test) <- "subject"
names(y_train) <- "activity"
names(y_test) <- "activity"
names(activity_labels) <- c("activity", "description")

#Merge the training and the test sets to create one data set

train <- cbind(subject_train, X_train, y_train)
test <- cbind(subject_test, X_test, y_test)
dataset <- rbind(train, test)

#Extract only the measurements on the mean and standard deviation for each measurement

dataset <- dplyr::select(dataset, subject, matches("[Mm]ean|std"), activity)

#Use descriptive activity names to name the activities in the data set

dataset <- merge(dataset, activity_labels)
dataset <- subset(dataset, select = -activity)
dataset <- dplyr::rename(dataset, "activity" = "description")

#Create an independent tidy data set with the average of each variable for each activity and each subject

tidydata <- dplyr::summarise_all(dplyr::group_by(dataset, activity, subject), .funs = c(mean="mean"))

#Use more descriptive variable names

names(tidydata) <- gsub("\\-|\\,", ".", names(tidydata))
names(tidydata) <- gsub("\\(|\\)", "", names(tidydata))
names(tidydata) <- sub("_mean$", "", names(tidydata))
names(tidydata) <- sub("^t", "time", names(tidydata))
names(tidydata) <- sub("^f", "freq", names(tidydata))
names(tidydata) <- sub("^angle", "angle.", names(tidydata))
names(tidydata) <- sub("^angle.t", "angle.time", names(tidydata))
names(tidydata) <- sub("BodyBody", "Body", names(tidydata))

#Output tidy data as text file

write.table(tidydata, file = "tidydata.txt", sep = " ", row.names = FALSE)
