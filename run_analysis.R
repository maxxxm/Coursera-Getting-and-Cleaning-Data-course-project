#Download Data

library(dplyr)

fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileurl,"UCIHARDataset.zip", mode="wb")

datafile <-"UCIHARDataset.zip"
unzip(datafile)




#Read Data

list.files("Home/maxlearn")

features<- read.table("UCI HAR Dataset/features.txt",as.is = TRUE)
activity_labels<- read.table("UCI HAR Dataset/activity_labels.txt")

train_x <- read.table("UCI HAR Dataset/train/X_train.txt")
train_y <- read.table("UCI HAR Dataset/train/y_train.txt")
train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt")

test_x <- read.table("UCI HAR Dataset/test/X_test.txt")
test_y <- read.table("UCI HAR Dataset/test/y_test.txt")
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt")

#1 - merge into one table

x<-rbind(train_x,test_x)
colnames(x)<-c(features[,2])

y<-rbind(train_y,test_y)
colnames(y)<-c("activity")

subject<-rbind(train_subject,test_subject)
colnames(subject)<-c("subject")

merged_activities<-cbind(subject,y,x)

#2 - Extrac only the measurements on the mean and standard deviation for each measurement


colmns<-grepl("subject|activity|mean|std",colnames(merged_activities))

merged_activities1<-merged_activities[,colmns]

#3 - Use descriptive activity names to name the activites in the data set

merged_activities2<-merge(merged_activities1,activity_labels,by.x = "activity",by.y = "V1")
names(merged_activities2)[82]<-paste("activity")
merged_activities2<-merged_activities2[,2:82]

#4 - Appropriately label the data set with descriptive variable names

merged_activities2_cols<-colnames(merged_activities2)

merged_activities2_cols<-gsub("^f","Frequency",merged_activities2_cols)
merged_activities2_cols<-gsub("^t","Time",merged_activities2_cols)
merged_activities2_cols<-gsub("BodyBody","Body",merged_activities2_cols)
merged_activities2_cols<-gsub("Acc","Accelerometer",merged_activities2_cols)
merged_activities2_cols<-gsub("Gyro","Gyroscope",merged_activities2_cols)
merged_activities2_cols<-gsub("Mag","Magnitude",merged_activities2_cols)
merged_activities2_cols<-gsub("mean","Mean",merged_activities2_cols)
merged_activities2_cols<-gsub("std","StandardDeviation",merged_activities2_cols)

colnames(merged_activities2)<-merged_activities2_cols

#5 - Create a second, independent tidy set with the average of each variable for each activity and each subject

merged_activities2_mean <-merged_activities2 %>%
  group_by(subject,activity) %>%
  summarise_each(funs(mean))

write.table(merged_activities2_mean,"tidy_data.txt",row.names = FALSE,quote = FALSE)



