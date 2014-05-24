
library(reshape2)

#Get the column names
col_name <- read.table(file="UCI HAR Dataset/features.txt",col.names=c("ID","Name"),header=FALSE)

#Clean up names. The idea is to remove all non characters like commas, dashes, parenthesis
#Underscore, letters and numbers are valid

#Remove () function calls
col_name$Name <- gsub("\\(\\)","",col_name$Name,perl=TRUE)
#Replace dashes with underscore
col_name$Name <- gsub("-","_",col_name$Name,perl=TRUE)
#The last bunch of column names have inputs as part of name, like func(X,Y).
#Convert this to func_X_Y
col_name$Name <- gsub("\\(","_",col_name$Name,perl=TRUE)
col_name$Name <- gsub(",","_",col_name$Name,perl=TRUE)
col_name$Name <- gsub("\\)","",col_name$Name,perl=TRUE)

#Extract only mean and std. The way columns are named, case sensitive 
#grepping for mean and std will give us the proper columns
sub_cols <- grepl("mean|std",col_name$Name)

#Read the training data (Assume dataset available in cwd) and apply above column names
train <- read.table(file="UCI HAR Dataset/train/X_train.txt",header=FALSE,col.names=col_name$Name)
train <- train[,sub_cols]
#train$IsTraining <- 1 # Decided not to incude this column as it was not asked for
#Add the activity ID
train_labels <- read.table(file="UCI HAR Dataset/train/y_train.txt",header=FALSE,col.names=c("Activity_ID"))
train$Activity_ID <- train_labels$Activity_ID
#Add the subject number
train_subject <- read.table(file="UCI HAR Dataset/train/subject_train.txt",header=FALSE,col.names=c("Subject"))
train$Subject <- train_subject$Subject

#Read the test data (Assume dataset available in cwd) and apply above column names
test <- read.table(file="UCI HAR Dataset/test/X_test.txt",col.names=col_name$Name)
test <- test[,sub_cols]
#test$IsTraining <- 0
test_labels <- read.table(file="UCI HAR Dataset/test/y_test.txt",header=FALSE,col.names=c("Activity_ID"))
test$Activity_ID <- test_labels$Activity_ID
#Add the subject number
test_subject <- read.table(file="UCI HAR Dataset/test/subject_test.txt",header=FALSE,col.names=c("Subject"))
test$Subject <- test_subject$Subject

#Create combined dataset
data <- rbind(train,test)

#Get the activity names
activ <- read.table(file="UCI HAR Dataset/activity_labels.txt",col.names=c("Activity_ID","ActivityName"),header=FALSE)
#Add activity names
data <- merge(x=data,y=activ,all.x=TRUE)
data$Activity_ID <- NULL  #Get rid of this column, since we have the activity name

#Create new data set
#Columns that are ids for melt
idcols <- c("ActivityName","Subject")
#Rest of the columns are the measurements for melt. Using the setdiff to find the difference in sets
measurecols <- setdiff(colnames(data),idcols)
meltData <- melt(data,id=idcols,measure.vars=measurecols)
tidyData <- dcast(meltData,ActivityName+Subject~variable,mean)
write.table(tidyData, "tidy_data.txt")







