#set working directory

setwd("c:\\projects\\Coursera\\Course3\\Week 4 Assignment\\UCI HAR Dataset")

#load the three training files into data frames
subject_train = read.table("train/subject_train.txt",col.names="subjectId")
X_train       = read.table("train/X_train.txt")
Y_train       = read.table("train/Y_train.txt"      ,col.names="activityId" )

#load the three test files into data frames
subject_test = read.table("test/subject_test.txt",col.names="subjectId")
X_test       = read.table("test/X_test.txt")
Y_test       = read.table("test/Y_test.txt"      ,col.names="activityId")


#load the reference data

features        <- read.table("features.txt",        col.names=c("featureId",  "featureLabel"))
activity_labels <- read.table("activity_labels.txt", col.names=c("activityId", "activityLabel"))


#combine the test and training datasets using rowbind

subject <- rbind(subject_test, subject_train)
X       <- rbind(X_test, X_train)
Y       <- rbind(Y_test, Y_train)


#attach column names to x using the labels from the features data frame 
#This will satisfy Point 4 of the instructions:
# 'Appropriately label the data set with descriptive variable names'

names(X) <- features$featureLabel

#merge the activity label to Y
#This is satisfies Point 3 of the instructions:
#   'Uses descriptive activity names to name the activities in the data set'
Y <-       merge(Y, activity_labels, by="activityId" )


#To satisfy Point 2 of the instructions:
# 'Extracts only the measurements on the mean and standard deviation for each measurement'
#identify which rows in the features reference data containg the mean or the standard 
#deviation measurements. Then use these to pick the relevant columns to take from X

featuresrow <- grep("-mean\\(\\)|-std\\(\\)", features$featureLabel)
X <- X[, featuresrow]


#combined the three data frames:  subject,X,Y using column bind
#This is satisfies Point 1 of the instructions:
# 'Merges the training and the test sets to create one data set'


allcombine<- cbind(subject,X,Y$activityLabel)

#Finally to Satisfy Point 5 of the instructions
#create a new dataset with the average for each variable
#for each activity and each subject

library(data.table)
setnames(allcombine, "Y$activityLabel", "activityLabel")

#Grouping by subjectId, activityLabel, 
#Calculate the averages for all the otehr columns
#sort the data set purely for presentation purposes 

library(plyr)
finaltidydata  <-  arrange(
                 ddply(allcombine, 
                    .(subjectId, activityLabel), 
                    function(x) colMeans(x[, 2:67])
                    )
                 ,subjectId,activityLabel)


write.table(finaltidydata, "tidydata.txt",row.names = FALSE)
