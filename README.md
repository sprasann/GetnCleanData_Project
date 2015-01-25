# Getting and cleaning data course project repository

This repository contains details of the files created for Getting and Cleaning Data course project.

The project is about cleaning the acceleromter data from the Human Activity Recognition Using Smartphone data and creating a tidy data set

One of the most exciting areas in all of data science right now is wearable computing - see for example  this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data for this is obtained from UCI Machine learning laboratory from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 


## Analysis Steps


Step 1: Merge the training and test dataset
        
Load the dataset
It is assumed that data is manually downloaded from the course website and stored and unzipped in local working directory
        
### Understanding the raw data        
X-test.txt gives 561 variables and a number of observations
Each of the observation in x test corresponds to one of the 6 activities
y-test.txt gives the corresponding activity (1 to 6) for each obs in x-test
Each activity/obs in x-test is done by one of 9 subjects in test and 1 or 21 subjects in train.  Total 30 subjects in the study subject-test.txt gives the corresponding subject for the activty/obs of x test
The 561 variables are named in features.txt
The 6 actities are named in activity_labels.txt

Now load the data, denormalize the ytrain and ytest data to add acitivy and then merge by rbind for test and train data


### Step2: Extracts only the measurements on the mean and standard deviation for each measurement.

There are 8 xyz variable (ie 8* 3 = 24) and 9 other variarables.  
So total varaible = 24+ 9 = 33
mean and std for these 33 variables means total 33 * 2 = 66 variables
Note: We are ignoring the meanFreq function as well as the 5 angle means viz, gravityMean, tBodyAccMean, tBodyAccJerkMean, tBodyGyroMean and tBodyGyroJerkMean.  The reason is that they dont have std deviation



### Step4: Set the descriptive names for the labels

Since the activities are set in step 1, we can move to step 4

Strategy for descriptive labels is to use the features
The labels have the form
        {t|f} - time domain or frequency domian signal
        {Body|Gravity} - Body or Gravity. ie the accelration signal split into body or Gravity
        {Acc|Gyro} - Accelrometer or Gyroscope: Where the input comes from
        {Jerk} - OPTIONAL.  The body linear acceleration and angular velocity were derived in time to obtain Jerk signals
        {Mag} - OPTIONAL. The magnitude of three dimensional signals were created using Euclidean norms
        {_mean_|_std_} . The mean or std deviation of these varaiables
        {X|Y|Z}. OPTIONAL.  The X, Y or Z dimension of these values


Cleanup the labels by removing () and replacing - with _
Also some varaibles have body repeated twice.  Removing them

### Step5: Creates a second, independent tidy data set with the average of each variable for each activity and each subject

### Step6: Export the tidydata


##The following files are present in this repository

###run_analysis.R
  This file contains the code for creating the tidydata set "UCI_HAR_tidydata.txt".  The code does not take any input. It expects the datafile to be unzipped and available in the working directory.  The name of the datadirectory is hardcoded as **"UCI HAR Dataset"**.  This dataset is transformed to the tidy dataset and outputs the file UCI_HAR_tidydata.txt
##UCI_HAR_tidydata.txt
  This file contains the tidy dataset. The data has been written out via read.table and row.names = FALSE. This can be read and viewed by
	
	data <- read.table("UCI_HAR_tidydata.txt", header = TRUE) 
	View(data)


###CodeBook.md
  This file contains the description of the variables present in the dataset "UCI_HAR_tidydata.txt"
###README.md
  This document
