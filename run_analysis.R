# Cleaning the acceleromter data from the Human Activity Recognition Using 
# Smartphone database and creating a tidy data set

## This is part of Getting and Cleaning Data course of Coursera, course project
## The data for this is obtained from UCI Machine learning laboratory
## http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 


run_analysis <- function(){
        
## Load the libraries
        library(dplyr)
        

## Step 1: Merge the training and test dataset
        
### Load the dataset
### It is assumed that data is manually downloaded from the course website and
### stored and unzipped in local working directory
        
## understanding the raw data        
## X-test.txt gives 561 variables and a number of observations
## Each of the observation in x test corresponds to one of the 6 activities
## y-test.txt gives the corresponding activity (1 to 6) for each obs in x-test
## Each activity/obs in x-test is done by one of 9 subjects in test
## and 1 or 21 subjects in train.  Total 30 subjects in the study
## subject-test.txt gives the corresponding subject for the activty/obs of x test
## The 561 variables are named in features.txt
## The 6 actities are named in activity_labels.txt

        
### The unzipped data are in the directory called UCI HAR Dataset
        datadir <- "UCI HAR Dataset"

### Read the master data
        activity_labels <- read.table(paste0(datadir, "/activity_labels.txt"))
        features <- read.table(paste0(datadir, "/features.txt"))                
        
### Read the test data        
        subjecttest <- read.table(paste0(datadir, "/test/subject_test.txt"))
        ytest <- read.table(paste0(datadir, "/test/y_test.txt"))
        xtest <- read.table(paste0(datadir, "/test/X_test.txt"))

### Denormalize the ytest data by adding activity. Note this automatically 
### takes care of step 3
        ytest <- join(ytest, activity_labels, by= "V1")

### Add the activity to the xtest
        xtest$activity <- ytest$V2
### Add the subject to the xtest
        xtest$subject <- subjecttest$V1

## Now xtest is ready.  Similarly prepare the xtrain

### Read the train data        
        subjecttrain <- read.table(paste0(datadir, "/train/subject_train.txt"))
        ytrain <- read.table(paste0(datadir, "/train/y_train.txt"))
        xtrain <- read.table(paste0(datadir, "/train/X_train.txt"))

### Denormalize the ytrain data by adding activity.  Note this automatically
### takes care of step 3
        ytrain <- join(ytrain, activity_labels, by= "V1")

### Add the activity to the xtrain
        xtrain$activity <- ytrain$V2
### Add the subject to the xtrain
        xtrain$subject <- subjecttrain$V1

## Now xtrain is ready.  Merge test and train

        xmerged <- rbind(xtrain, xtest)

## Step2: Extracts only the measurements on the mean and standard deviation for 
## each measurement.

### There are 8 xyz variable (ie 8* 3 = 24) and 9 other variarables.  
### So total varaible = 24+ 9 = 33
### mean and std for these 33 variables means total 33 * 2 = 66 variables
### Note: We are ignoring the meanFreq function as well as the 5 angle means
### viz, gravityMean, tBodyAccMean, tBodyAccJerkMean, tBodyGyroMean and
### tBodyGyroJerkMean.  The reason is that they dont have std deviation


### First get the varibles with mean and std in their names
### search for mean( and std( to avoid meanFreq and anglemeans

        meanstd_var <- grepl("mean\\(|std\\(", features$V2, perl = TRUE, 
                             ignore.case = TRUE)

### Since, we have added activity and subject to the datatest, let us select them as well
        meanstd_var <- c(meanstd_var, TRUE, TRUE)


### Now section the dataset for all the rows but only the needed columns
        xsection <- xmerged[  ,names(xmerged)[meanstd_var]]
        
## Step4: Set the descriptive names for the labels

### Strategy for descriptive labels is to use the features
### The labels have the form
###        {t|f} - time domain or frequency domian signal
###        {Body|Gravity} - Body or Gravity. ie the accelration signal split into body or Gravity
###        {Acc|Gyro} - Accelrometer or Gyroscope: Where the input comes from
###        {Jerk} - OPTIONAL.  The body linear acceleration and angular velocity were derived in time to obtain Jerk signals
###        {Mag} - OPTIONAL. The magnitude of three dimensional signals were created using Euclidean norms
###        {_mean_|_std_} . The mean or std deviation of these varaiables
###        {X|Y|Z}. OPTIONAL.  The X, Y or Z dimension of these values


### Cleanup the labels by removing () and replacing - with _
### Also some varaibles have body repeated twice.  Removing them

        meanstd_varname <- grep("mean\\(|std\\(", features$V2, perl = TRUE, 
                        ignore.case = TRUE, value = TRUE)
        meanstd_varname <- c(meanstd_varname, "activity", "subject")

        meanstd_varname <- gsub("\\(\\)","", meanstd_varname)
        meanstd_varname <- gsub("\\-","\\_", meanstd_varname)
        meanstd_varname <- gsub("BodyBody","Body", meanstd_varname)
        names(xsection) <- meanstd_varname


## Step5: creates a second, independent tidy data set with the average of each 
## variable for each activity and each subject

     tidydata <- xsection %>% group_by(activity, subject) %>% 
        summarise_each(funs(mean)) 


## Step6: Export the tidydata
        write.table(tidydata, "UCI_HAR_tidydata.txt", row.names = FALSE)
###


}
