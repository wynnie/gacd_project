#CodeBook

### Original data:

- [source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 
- [description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


### Data Transformation Steps

The following data transformation is done on the above data

1. Clean up column names to only include character names
2. Merge the activity name labels and subjects into the data set
3. Merge test and training data
4. Data has been melted and recast to show the average of the mean functions for each subject and each activity. This is available in "tidy_data.txt"


### Variable Descriptions

The following description is from the README of the original data set

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables used in the new dataset are only the mean and standard deviation variables. For each one of these variable, the average for each subject
and each activity is listed

#### Data Columns

1. **ActivityName**: Activity being performed
2. **Subject**: The subject that provided the data

The rest of the columns are detailed below. The descriptions are in the link mentioned above.

[1] "ActivityName"                  "Subject"                        "tBodyAcc_mean_X"              
[4] "tBodyAcc_mean_Y"               "tBodyAcc_mean_Z"               "tBodyAcc_std_X"               
[7] "tBodyAcc_std_Y"                "tBodyAcc_std_Z"                "tGravityAcc_mean_X"           
[10] "tGravityAcc_mean_Y"            "tGravityAcc_mean_Z"            "tGravityAcc_std_X"            
[13] "tGravityAcc_std_Y"             "tGravityAcc_std_Z"             "tBodyAccJerk_mean_X"          
[16] "tBodyAccJerk_mean_Y"           "tBodyAccJerk_mean_Z"           "tBodyAccJerk_std_X"           
[19] "tBodyAccJerk_std_Y"            "tBodyAccJerk_std_Z"            "tBodyGyro_mean_X"             
[22] "tBodyGyro_mean_Y"              "tBodyGyro_mean_Z"              "tBodyGyro_std_X"              
[25] "tBodyGyro_std_Y"               "tBodyGyro_std_Z"               "tBodyGyroJerk_mean_X"         
[28] "tBodyGyroJerk_mean_Y"          "tBodyGyroJerk_mean_Z"          "tBodyGyroJerk_std_X"          
[31] "tBodyGyroJerk_std_Y"           "tBodyGyroJerk_std_Z"           "tBodyAccMag_mean"             
[34] "tBodyAccMag_std"               "tGravityAccMag_mean"           "tGravityAccMag_std"           
[37] "tBodyAccJerkMag_mean"          "tBodyAccJerkMag_std"           "tBodyGyroMag_mean"            
[40] "tBodyGyroMag_std"              "tBodyGyroJerkMag_mean"         "tBodyGyroJerkMag_std"         
[43] "fBodyAcc_mean_X"               "fBodyAcc_mean_Y"               "fBodyAcc_mean_Z"              
[46] "fBodyAcc_std_X"                "fBodyAcc_std_Y"                "fBodyAcc_std_Z"               
[49] "fBodyAcc_meanFreq_X"           "fBodyAcc_meanFreq_Y"           "fBodyAcc_meanFreq_Z"          
[52] "fBodyAccJerk_mean_X"           "fBodyAccJerk_mean_Y"           "fBodyAccJerk_mean_Z"          
[55] "fBodyAccJerk_std_X"            "fBodyAccJerk_std_Y"            "fBodyAccJerk_std_Z"           
[58] "fBodyAccJerk_meanFreq_X"       "fBodyAccJerk_meanFreq_Y"       "fBodyAccJerk_meanFreq_Z"      
[61] "fBodyGyro_mean_X"              "fBodyGyro_mean_Y"              "fBodyGyro_mean_Z"             
[64] "fBodyGyro_std_X"               "fBodyGyro_std_Y"               "fBodyGyro_std_Z"              
[67] "fBodyGyro_meanFreq_X"          "fBodyGyro_meanFreq_Y"          "fBodyGyro_meanFreq_Z"         
[70] "fBodyAccMag_mean"              "fBodyAccMag_std"               "fBodyAccMag_meanFreq"         
[73] "fBodyBodyAccJerkMag_mean"      "fBodyBodyAccJerkMag_std"       "fBodyBodyAccJerkMag_meanFreq" 
[76] "fBodyBodyGyroMag_mean"         "fBodyBodyGyroMag_std"          "fBodyBodyGyroMag_meanFreq"    
[79] "fBodyBodyGyroJerkMag_mean"     "fBodyBodyGyroJerkMag_std"      "fBodyBodyGyroJerkMag_meanFreq"
