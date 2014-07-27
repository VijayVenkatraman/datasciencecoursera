# Course Project for Getting and Cleaning Data
# Author: Vijay Venkatraman - Last Modified on 07/26/2014

# You should create one R script called run_analysis.R that does the following. 
#1.	Merges the training and the test sets to create one data set.
#2.	Extracts only the measurements on the mean and standard deviation for each measurement. 
#3.	Uses descriptive activity names to name the activities in the data set
#4.	Appropriately labels the data set with descriptive variable names. 
#5.	Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

# Set the working directory to "UCI HAR Dataset"folder

# Reading in the datasets (training and test)
traindata <- read.table('train/X_train.txt')
testdata  <- read.table('test/X_test.txt')

# Reading in the associated activity ID for the datasets(training and test)
actIDs_train <- read.table('train/y_train.txt')
actIDs_test  <- read.table('test/y_test.txt')

# Reading in the associated subject list for the datasets (training and test)
subjid_train <- read.table('train/subject_train.txt')
subjid_test  <- read.table('test/subject_test.txt')

# Reading the activity labels and get the 2nd column with activity labels
activitylabels <- read.table('activity_labels.txt', stringsAsFactors=F)
activitylabels <- unique(activitylabels[,2])

# Reading the feature list from V2 variable in features.txt 
features <- read.table('features.txt')$V2
features <- gsub('[()]', '', features) 
features <- gsub('[,-.]', '.', features)
features <- tolower(features)

# Assign names to the variables based on feature.txt
names(testdata) <- features
names(traindata) <- features

# Goal 1: Merges the training and the test sets to create one data set
alltraindata <- cbind(subjid_train,actIDs_train,traindata)
alltestdata  <- cbind(subjid_test,actIDs_test,testdata)
data <- rbind(alltraindata, alltestdata)
# Assign columns names for the combined dataset
datacolnames <- c('subject', 'activityID', features)
colnames(data) <- datacolnames

# Goal 2: Extracts only the measurements on the mean and standard deviation for each measurement. 
selectedcols <- grep(".mean.x|.mean.y|.mean.z|[.]mean$|.std.x|.std.y|.std.z|[.]std$", datacolnames)
selectedcols <- c(1:2,selectedcols) # adds the subject and activityID columns
data_goal2 <- data[, selectedcols]
#write.table(data_goal2, row.names=F, col.names=T, file='output_meanandstd.txt')

# Goal 3: Uses descriptive activity names to name the activities in the data set
# Goal 4: Appropriately labels the data set with descriptive variable names. 
# Goal 5: Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
data_goal5 <- aggregate(data_goal2, by=list(data_goal2$subject, data_goal2$activityID), mean)
data_goal5 <- data_goal5[ ,-c(1,2)]
activity <- factor(data_goal5$activityID, labels=activitylabels)
data_goal5 <- cbind(activity,data_goal5)
write.table(data_goal5, row.names=F, col.names=T, file='output_tidydataset.txt')

