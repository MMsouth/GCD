Data Description for "tidyData.txt" created by run_analysis.R:

Summary: This data set include processed data from an experiment described in
link : "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones."
The raw data used for data processing was obtained from this link:
"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

Data was trasformed as following:
First, data from the test subjects were combined with data from the training subjects.
Second, descriptive labels were added to the variable names.
Third, measurements on the mean and standard deviation were extracted.
Forth, descirptive acitvity names were added to the activities originally coded in numbers.
Fifth, the average of each variable for each activity and each subject was calculated and 
presented with this tidy data set. 


This tidy data set contains 180 obs of following 81 variables:

"Subject" 
	test subjects 1 to 30
"Label" 
	activities conducted by test sujects
	1 WALKING
	2 WALKING_UPSTAIRS
	3 WALKING_DOWNSTAIRS
	4 SITTING
	5 STANDING
	6 LAYING
"tBodyAcc-mean()-X" 
"tBodyAcc-mean()-Y" 
"tBodyAcc-mean()-Z" 
"tGravityAcc-mean()-X" 
"tGravityAcc-mean()-Y" 
"tGravityAcc-mean()-Z" 
"tBodyAccJerk-mean()-X" 
"tBodyAccJerk-mean()-Y" 
"tBodyAccJerk-mean()-Z" 
"tBodyGyro-mean()-X" 
"tBodyGyro-mean()-Y" 
"tBodyGyro-mean()-Z" 
"tBodyGyroJerk-mean()-X" 
"tBodyGyroJerk-mean()-Y" 
"tBodyGyroJerk-mean()-Z" 
"tBodyAccMag-mean()" 
"tGravityAccMag-mean()" 
"tBodyAccJerkMag-mean()" 
"tBodyGyroMag-mean()" 
"tBodyGyroJerkMag-mean()" 
"fBodyAcc-mean()-X" 
"fBodyAcc-mean()-Y" 
"fBodyAcc-mean()-Z" 
"fBodyAcc-meanFreq()-X" 
"fBodyAcc-meanFreq()-Y" 
"fBodyAcc-meanFreq()-Z" 
"fBodyAccJerk-mean()-X" 
"fBodyAccJerk-mean()-Y" 
"fBodyAccJerk-mean()-Z" 
"fBodyAccJerk-meanFreq()-X" 
"fBodyAccJerk-meanFreq()-Y" 
"fBodyAccJerk-meanFreq()-Z" 
"fBodyGyro-mean()-X" 
"fBodyGyro-mean()-Y" 
"fBodyGyro-mean()-Z" 
"fBodyGyro-meanFreq()-X" 
"fBodyGyro-meanFreq()-Y" 
"fBodyGyro-meanFreq()-Z" 
"fBodyAccMag-mean()" 
"fBodyAccMag-meanFreq()" 
"fBodyBodyAccJerkMag-mean()" 
"fBodyBodyAccJerkMag-meanFreq()" 
"fBodyBodyGyroMag-mean()" 
"fBodyBodyGyroMag-meanFreq()" 
"fBodyBodyGyroJerkMag-mean()" 
"fBodyBodyGyroJerkMag-meanFreq()" 
"tBodyAcc-std()-X" 
"tBodyAcc-std()-Y" 
"tBodyAcc-std()-Z" 
"tGravityAcc-std()-X" 
"tGravityAcc-std()-Y" 
"tGravityAcc-std()-Z" 
"tBodyAccJerk-std()-X" 
"tBodyAccJerk-std()-Y" 
"tBodyAccJerk-std()-Z" 
"tBodyGyro-std()-X" 
"tBodyGyro-std()-Y" 
"tBodyGyro-std()-Z" 
"tBodyGyroJerk-std()-X" 
"tBodyGyroJerk-std()-Y" 
"tBodyGyroJerk-std()-Z" 
"tBodyAccMag-std()" 
"tGravityAccMag-std()" 
"tBodyAccJerkMag-std()" 
"tBodyGyroMag-std()" 
"tBodyGyroJerkMag-std()" 
"fBodyAcc-std()-X" 
"fBodyAcc-std()-Y" 
"fBodyAcc-std()-Z" 
"fBodyAccJerk-std()-X" 
"fBodyAccJerk-std()-Y" 
"fBodyAccJerk-std()-Z" 
"fBodyGyro-std()-X" 
"fBodyGyro-std()-Y" 
"fBodyGyro-std()-Z" 
"fBodyAccMag-std()" 
"fBodyBodyAccJerkMag-std()" 
"fBodyBodyGyroMag-std()" 
"fBodyBodyGyroJerkMag-std()"