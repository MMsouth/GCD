## This R script have five objects as required
## by the course project of Getting and Cleaning Data:

## Object 1: (1) merge testing data set

testLabel <- read.table("./UCI HAR DataSet/test/y_test.txt", header = F)
testSet <- read.table("./UCI HAR DataSet/test/X_test.txt", header = F)
testSubject <- read.table("./UCI HAR DataSet/test/subject_test.txt", header = F)
testData <- cbind(testSubject, testLabel, testSet)
colnames(testData)[1:2] <- c("Subject", "Label")

## Object 1: (2) merge training data set

trainLabel <- read.table("./UCI HAR DataSet/train/y_train.txt", header = F)
trainSet <- read.table("./UCI HAR DataSet/train/X_train.txt", header = F)
trainSubject <- read.table("./UCI HAR DataSet/train/subject_train.txt", header = F)
trainData <- cbind(trainSubject, trainLabel, trainSet)
colnames(trainData)[1:2] <- c("Subject", "Label")

## Object 1: (3) Assemble complete data set

Dataset <- rbind(testData, trainData)

## Object 4: Label variable with descriptive names (Object # 4)
features <- read.table("./UCI HAR DataSet/features.txt", header = F)
colnames(Dataset)[3:ncol(Dataset)] <- as.character(features[ ,2])
        ## Dataset[c(1,10299), c(1,563)]

## Object 2: Extract mean and std data

colSelect <- colnames(Dataset)
locateMean <- grep("mean", colSelect)
locateSTD <- grep("std", colSelect)
dataExtract <- Dataset[, c(1, 2, locateMean, locateSTD)]
        ## dataExtract[c(1,10299), c(1:3, 81)]
        ## the STD collumns are after Mean collumns 

## Object 3: Name the activity descriptively 

activityLabel <- read.table("./UCI HAR DataSet/activity_labels.txt", header = F)
activityLabel <- as.character(activityLabel[, 2])
tempData <- dataExtract
tempData[grep(1, dataExtract[, 2]), 2] <- activityLabel[1] 
tempData[grep(2, dataExtract[, 2]), 2] <- activityLabel[2]
tempData[grep(3, dataExtract[, 2]), 2] <- activityLabel[3]
tempData[grep(4, dataExtract[, 2]), 2] <- activityLabel[4]
tempData[grep(5, dataExtract[, 2]), 2] <- activityLabel[5]
tempData[grep(6, dataExtract[, 2]), 2] <- activityLabel[6]
        ## tempData[c(1,10299), c(1:3, 81)]
labeledData <- tempData
        ## labeledData[c(1,10299), c(1:3, 81)]

## Object 5: create tidy data set

tidyData <- aggregate(.~ Subject + Label, labeledData, mean, na.action = na.omit)
write.table(tidyData, file = "./tidyData.txt")

