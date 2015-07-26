library(plyr)
library(dplyr)
library(reshape2)

#Assumption: I assume that all the files (text files, data files) after unzipped from the link in the
#course are placed in the current workig directory which is the home directory of R environment, you 
#can type getwd(), in R,to get the current working directory

#This is Step 1: Merges the training and the test sets to create one data set.

#read common tables for the experiment, e.g. features.txt and actvity_lables.txt
featuredat<-read.table("features.txt",header=FALSE)
actlabeldat<-read.table("activity_labels.txt", header=FALSE)

#load train dataset
xtraindat<-read.table("X_train.txt", header=FALSE)
ytraindat<-read.table("y_train.txt", header=FALSE)
subjecttraindat<-read.table("subject_train.txt", header=FALSE)

#load test dataset
xtestdat<-read.table("X_test.txt", header=FALSE)
ytestdat<-read.table("y_test.txt", header=FALSE)
subjecttestdat<-read.table("subject_test.txt", header=FALSE)

#add column names to xtraindat and xtestdat, using the description in features.txt 
#Note, this is also part of Step 4, I start to add descriptive column names using information
#in feature.txt for the train and test datasets.
names(xtraindat)<-featuredat[,2]
names(xtestdat)<-featuredat[,2]

#combine y_train.txt's label to xtraindat, as a column, and name the
#resulting dataset as "xytraindata"; do the same to test dataset, resulting
#dataset as "xytestdata"

xytraindata<-cbind(xtraindat,ytraindat[, 1])
xytestdata<-cbind(xtestdat,ytestdat[, 1])

#change the column name of column 562 in both train and test datasets 
#to "activityid"
names(xytraindata)[562]<-"activityid"
names(xytestdata)[562]<-"activityid"

#combin subject_train.txt's label to xytraindata, as a column, 
#and name the resulting dataset as sxytraindata;do the same to test dataset, resulting
#dataset as "sxytestdata"
sxytraindata<-cbind(xytraindata,subjecttraindat[, 1])
sxytestdata<-cbind(xytestdata,subjecttestdat[, 1])

#change the column name of column 563 in both train and test databases 
#to "volunteerid", sxytraindata and sxytestdata now contain all the data needed, including
#descriptive column names.  This step fullfils the requirement for Step 4, unless I want to
#rename the column names to more meaningful names later on.

names(sxytraindata)[563]<-"volunteerid"
names(sxytestdata)[563]<-"volunteerid"

#check dimension of train data and test data
dim(sxytraindata)
dim(sxytestdata)

#Stack train data and test data by using "rbind" and check dimension, the combined dataset
#has 10299 rows(observations), and 563 columns (objects)
alldata<-rbind(sxytraindata,sxytestdata)
dim(alldata)

#This is Step 2: Extracts only the measurements on the mean and standard 
#deviation for each measurement. 

#eliminate the duplicated columns before selecting dataset, then select
#columns of volunteerid, activityid, and the columns containing
#"mean" and "std" to form a new dataset, d1, excluding the "meanFreq" variables which are not considered
# the mean values of the measurements related to the activities
tidydata<- alldata[ , !duplicated(colnames(alldata))]
d1<-select(.data=tidydata,volunteerid, activityid,contains("mean",ignore.case=FALSE), contains("std",ignore.case=FALSE)
            ,-contains("meanFreq",ignore.case=FALSE))

#This is Step 3: Uses descriptive activity names to name the activities in the data set

#In order to use the descriptive name of activities, I merge the datasets
#d1 and actlabeldat
names(actlabeldat)<-c("activityid","activityname")
d2<-merge(actlabeldat,d1,by="activityid")

#This is Step 4: Appropriately labels the data set with descriptive variable names.

#This has been done in previous steps where I used the decriptive names for the columns
#The first three columns are "activityid","activityname" which are described in 
#activity_labels.txt.  volunteerid is the id in the subject_train.txt and subject_test.txt
#referring to the volunteers(people) who performed the experiments.
#the column names for columns 4-69, are extracted and copied from the features.txt table
#These are the mean (symboled by "mean()") values and standard deviation (symboled by "std()")
#values for the measurements 
names(d2)
View(head(d2))

#This is Step 5: From the data set in step 4, creates a second, independent tidy data set 
#with the average of each variable for each activity and each subject.
d <- melt(data=d2, id = c("volunteerid","activityname"),measure.vars = colnames(d2[,4:69]))
dd <- dcast(d,volunteerid+activityname ~ variable, mean)

#in final dataset dd, each row contains an average value (mean) of one measure (variable containing "mean()" or "std()")
#for one feature for one activity for one volunteer(subject)

#Write the dataset, dd, to a table, TidyDataSet.txt, in the current working directory

write.table(d,file="TidyDataSet.txt",row.names=FALSE)



