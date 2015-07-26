==================================================================
Getting and Cleaning Data Course Project
Lynn Huang, July 26, 2015, Version 1
==================================================================
Requirements from the project description by JHU's Data Science Group

"The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit:
 1) a tidy data set as described below,
 2) a link to a Github repository with your script for performing the analysis, and 
3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 
You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected."
......
"
 You should create one R script called run_analysis.R that does the following. 

    Merges the training and the test sets to create one data set.
    Extracts only the measurements on the mean and standard deviation for each measurement. 
    Uses descriptive activity names to name the activities in the data set
    Appropriately labels the data set with descriptive variable names. 

    From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject."

==================================================================
Here are procedures I created to complete the project

1. Processing the data obtined from the internet - placing the useful files under R's working direcotry

 A ziped file, getdata_projectfiles_UCI HAR Dataset.zip,
 was downloaded from the below link

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

I unzip the data ( a main folder, UCI HAR Dataset, with two subfolders, train, test, which contain a subfolder, "Inertial Signals")
Browsing through the files under main folder, and subfolders, I copy the relevent files to my R working directory, which is "C:/Users/M.Lynn/Documents"
These files are 

- 'features.txt': List of all features (can be found under main folder, UCI HAR Dataset).

- 'activity_labels.txt': Links the class labels with their activity name,e.g.the six activities are WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING,                          LAYING (can be found under main folder, UCI HAR Dataset).

- 'X_train.txt': Training set (can be found under subfolder, train).

- 'y_train.txt': Training labels (can be found under subfolder, train).

- 'subject_train.txt': Each row (an id ) identifies a subject (a volunteer) who performed the activity for each window sample. 21 ids (70% of 30 volunteers) are in                            table (can be found under subfolder, train)

- 'X_test.txt': Test set (can be found under subfolder, test).

- 'y_test.txt': Test labels (can be found under subfolder, test).

- 'subject_test.txt': Each row (an id) identifies a subject (a volunteer) who performed the activity for each window sample. 9 ids (30% of 30 volunteers) are in                          table (can be found under subfolder, test).

2. Read in the files to R environment
	 
	Original Files			 R dataset

	'features.txt' --> 		featuredat
 	'activity_labels.txt'-->	actlabeldat
	'X_train.txt'-->		xtraindat
	'y_train.txt'-->		ytraindat
	'subject_train.txt'-->		subjecttraindat
	'X_test.txt'-->			xtestdat
	'y_test.txt'-->			ytestdat
	'subject_test.txt'-->		subjecttestdat

3. Generate complete, descriptive, datasets for both train and test.
The procedure is the same.  So I will use train set in the example
	1) Add descriptive column names to train set (xtraindat).  The 561 column names are extracted(copied) from the features table (featuredat), using commonad
		names(xtraindat)<-featuredat[,2]
	2) Add the activity labels in train (ytraindat,7352 objects) to the train set(xtraindat 7352 objects), using column binding in R, e.g.
		xytraindata<-cbind(xtraindat,ytraindat[, 1])
	3) Add a column name to the newly added column, actvityid
	4) Add the subjects/volunteers (subjecttraindat, 7352 objects) to the updated trainset in step 3 (xytraindata), using column binding in R, e.g.
		sxytraindata<-cbind(xytraindata,subjecttraindat[, 1])
	5) Add a column name to the newly added column, volunteerid
	
	A complete/updated training set was created for train dataset, namely, sxytraindata.  A test dataset, namely, sxytestdata, was created using the same steps.

4. Generate a complete dataset combining train set and test set uing row binding in R, e.g.
	alldata<-rbind(sxytraindata,sxytestdata)

5. For extracting the meansurements on the mean and standard deviation for each measurement, I interpret that only those columns containing "mean()" and "std()", I 
   exclude the columns containing "meanFreq" since those are related to the average of the frequencies (not the activity related measurements).  So I use "-contains("meanFreq",ignore.case=FALSE)" in the selection of the subset.
	
6. Overal, I am not familiar with the naming conventions in the specific area of research, so I have decided not to change the column names which I extracted from the features.txt table.  Some string manipulation can be done if one prefers to do so.  As a result, the columns I have had for the dataset generated in step 5 is

 [1] "activityid"                  "activityname"               
 [3] "volunteerid"                 "tBodyAcc-mean()-X"          
 [5] "tBodyAcc-mean()-Y"           "tBodyAcc-mean()-Z"          
 [7] "tGravityAcc-mean()-X"        "tGravityAcc-mean()-Y"       
 [9] "tGravityAcc-mean()-Z"        "tBodyAccJerk-mean()-X"      
[11] "tBodyAccJerk-mean()-Y"       "tBodyAccJerk-mean()-Z"      
[13] "tBodyGyro-mean()-X"          "tBodyGyro-mean()-Y"         
[15] "tBodyGyro-mean()-Z"          "tBodyGyroJerk-mean()-X"     
[17] "tBodyGyroJerk-mean()-Y"      "tBodyGyroJerk-mean()-Z"     
[19] "tBodyAccMag-mean()"          "tGravityAccMag-mean()"      
[21] "tBodyAccJerkMag-mean()"      "tBodyGyroMag-mean()"        
[23] "tBodyGyroJerkMag-mean()"     "fBodyAcc-mean()-X"          
[25] "fBodyAcc-mean()-Y"           "fBodyAcc-mean()-Z"          
[27] "fBodyAccJerk-mean()-X"       "fBodyAccJerk-mean()-Y"      
[29] "fBodyAccJerk-mean()-Z"       "fBodyGyro-mean()-X"         
[31] "fBodyGyro-mean()-Y"          "fBodyGyro-mean()-Z"         
[33] "fBodyAccMag-mean()"          "fBodyBodyAccJerkMag-mean()" 
[35] "fBodyBodyGyroMag-mean()"     "fBodyBodyGyroJerkMag-mean()"
[37] "tBodyAcc-std()-X"            "tBodyAcc-std()-Y"           
[39] "tBodyAcc-std()-Z"            "tGravityAcc-std()-X"        
[41] "tGravityAcc-std()-Y"         "tGravityAcc-std()-Z"        
[43] "tBodyAccJerk-std()-X"        "tBodyAccJerk-std()-Y"       
[45] "tBodyAccJerk-std()-Z"        "tBodyGyro-std()-X"          
[47] "tBodyGyro-std()-Y"           "tBodyGyro-std()-Z"          
[49] "tBodyGyroJerk-std()-X"       "tBodyGyroJerk-std()-Y"      
[51] "tBodyGyroJerk-std()-Z"       "tBodyAccMag-std()"          
[53] "tGravityAccMag-std()"        "tBodyAccJerkMag-std()"      
[55] "tBodyGyroMag-std()"          "tBodyGyroJerkMag-std()"     
[57] "fBodyAcc-std()-X"            "fBodyAcc-std()-Y"           
[59] "fBodyAcc-std()-Z"            "fBodyAccJerk-std()-X"       
[61] "fBodyAccJerk-std()-Y"        "fBodyAccJerk-std()-Z"       
[63] "fBodyGyro-std()-X"           "fBodyGyro-std()-Y"          
[65] "fBodyGyro-std()-Z"           "fBodyAccMag-std()"          
[67] "fBodyBodyAccJerkMag-std()"   "fBodyBodyGyroMag-std()"     
[69] "fBodyBodyGyroJerkMag-std()" 

7. Generate the final set of data to get the average value for meansurements for each activity performed by each volunteer.
8. Create a table, TidyDataSet.txt extension and store in the working directory.  
   

