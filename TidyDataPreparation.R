#Get data
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
              ,"UCI HAR Dataset.zip", mode = "wb")
#unzip data
unzip("UCI HAR Dataset.zip")

#read test data
x<-read.table(file.path("UCI HAR Dataset", "test", "subject_test.txt"))
y<-read.table(file.path("UCI HAR Dataset", "test", "X_test.txt"))
z<-read.table(file.path("UCI HAR Dataset", "test", "Y_test.txt"))

#read train data
a<-read.table(file.path("UCI HAR Dataset", "train", "subject_train.txt"))
b<-read.table(file.path("UCI HAR Dataset", "train", "X_train.txt"))
c<-read.table(file.path("UCI HAR Dataset", "train", "Y_train.txt"))

#read features and activity labels
fea <- read.table(file.path("UCI HAR Dataset", "features.txt"), as.is = TRUE)
act <- read.table(file.path("UCI HAR Dataset", "activity_labels.txt"))
colnames(act) <- c("activityId", "activityLabel")

#bind databases
train<-cbind(a,b,c)
test<-cbind(x,y,z)
db<-rbind(train,test)

#assigns column names
colnames(db)<-c("subject", fea[, 2], "activity")

#remove objects
rm(a,b,c,x,y,z,test,train)

#Extracts only the measurements on the mean and standard deviation for each measurement
db<-db[,grepl("subject|activity|mean|std", colnames(db))]

#Uses descriptive activity names to name the activities in the data set
db$activity <- factor(db$activity, 
               levels = act[, 1], labels = act[, 2])
#Appropriately labels the data set with descriptive variable names.
colnames(db) <- gsub("[\\(\\)-]", "", colnames(db))
colnames(db) <- gsub("Acc", "Accelerometer", colnames(db))
colnames(db) <- gsub("Gyro", "Gyroscope", colnames(db))
colnames(db) <- gsub("Mag", "Magnitude", colnames(db))
colnames(db) <- gsub("Freq", "Frequency", colnames(db))
colnames(db) <- gsub("mean", "Mean", colnames(db))
colnames(db) <- gsub("std", "STD", colnames(db))
colnames(db) <- gsub("^f", "frequency", colnames(db))
colnames(db) <- gsub("^t", "time", colnames(db))
colnames(db) <- gsub("BodyBody","Body",colnames(db))

library(dplyr)
#From the data set in step 4, creates a second, independent tidy data set 
#with the average of each variable for each activity and each subject.
db2 <- db %>%
  group_by(subject, activity) %>%
  summarise_all(funs(mean))
write.table(db2, "TidyData.txt", row.name=FALSE)
?write.table
