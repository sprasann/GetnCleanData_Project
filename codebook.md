# Data Dictionary	- UCI HAR tidy dataset


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.





## List of Variables

### activity
	Six values. Represent the activity of the subject for that observation
	-WALKING
	-WALKING_UPSTAIRS
	-WALKING_DOWNSTAIRS
	-SITTING
	-STANDING
	-LAYING


###subject
	Number from 1 to 30 representing a subject for a total of 30 subjects for whom the data is collected. 


###tBodyAcc_mean_X

	This variable and all the subequent varibles have the following naming convention

        {t|f} 		- Time domain or Frequency domian signal.  The underlying data comes from the accelerometer and gyroscope 3-axial raw signals  These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
        {Body|Gravity} 	- Body or Gravity. The acceleration signal was separated into body and gravity 	acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
        {Acc|Gyro} 	- Accelrometer or Gyroscope: The embedded accelerometer and gyroscope of the subject wearing a smartphone (Samsung Galaxy S II) on the waist
        {Jerk} 		- OPTIONAL.  The body linear acceleration and angular velocity were derived in time to obtain Jerk signals
        {Mag} 		- OPTIONAL. The magnitude of three dimensional signals were created using Euclidean norms
        {_mean_|_std_}  - The mean or std deviation of these varaiables for the observation window
        {X|Y|Z} 	- OPTIONAL.  The X, Y or Z dimension of these values

	The values are normalized between -1 and 1
	
	They represent the mean for that activity and subject

	Note that the underlying variable itself is a mean or a standard deviation.  This variable is a mean of the underlying varible.

	Thus this variable represents for the activty and subject the average of the Time domain Body Acceleration for X axis observations for that window


###tBodyAcc_mean_Y
	
	The mean of the time domian body accelerometer reading for Y axis

###tBodyAcc_mean_Z

	The mean of the time domian body accelerometer value for Y axis

###tBodyAcc_std_X
	
	The standard deviation of the time domian body accelerometer value for X axis

###tBodyAcc_std_Y

	The standard deviation of the time domian body accelerometer value for Y axis

###tBodyAcc_std_Z

	The standard deviation of the time domian body accelerometer value for Z axis

###tGravityAcc_mean_X
	
	The mean of the time domian gravity accelerometer value for X axis

###tGravityAcc_mean_Y

	The mean of the time domian gravity accelerometer value for Y axis
	
###tGravityAcc_mean_Z

	The mean of the time domian gravity accelerometer value for Z axis

###tGravityAcc_std_X

	The standard deviation of the time domian gravity accelerometer value for X axis

###tGravityAcc_std_Y

	The standard deviation of the time domian gravity accelerometer value for Y axis

###tGravityAcc_std_Z

	The standard deviation of the time domian gravity accelerometer value for Z axis

###tBodyAccJerk_mean_X

	The mean of the time domian body jerk accelerometer value for X axis

###tBodyAccJerk_mean_Y

	The mean of the time domian body jerk accelerometer value for Y axis

###tBodyAccJerk_mean_Z

	The mean of the time domian body jerk accelerometer value for Z axis

###tBodyAccJerk_std_X

	The standard deviation of the time domian body jerk accelerometer value for X axis

###tBodyAccJerk_std_Y

	The standard deviation of the time domian body jerk accelerometer value for Y axis

###tBodyAccJerk_std_Z

	The standard deviation of the time domian body jerk accelerometer value for Z axis

###tBodyGyro_mean_X

	The mean of the time domian body gyroscope value for X axis

###tBodyGyro_mean_Y

	The mean of the time domian body gyroscope value for Y axis

###tBodyGyro_mean_Z

	The mean of the time domian body gyroscope value for Z axis

###tBodyGyro_std_X

	The standard deviation of the time domian body gyroscope value for X axis

###tBodyGyro_std_Y

	The standard deviation of the time domian body gyroscope value for Y axis

###tBodyGyro_std_Z

	The standard deviation of the time domian body gyroscope value for Z axis

###tBodyGyroJerk_mean_X

	The mean of the time domian body gyroscope jerk value for X axis

###tBodyGyroJerk_mean_Y

	The mean of the time domian body gyroscope jerk value for Y axis

###tBodyGyroJerk_mean_Z

	The mean of the time domian body gyroscope jerk value for Z axis

###tBodyGyroJerk_std_X

	The standard deviation of the time domian body gyroscope jerk value for X axis

###tBodyGyroJerk_std_Y

	The standard deviation of the time domian body gyroscope jerk value for Y axis

###tBodyGyroJerk_std_Z

	The standard deviation of the time domian body gyroscope jerk value for Z axis

###tBodyAccMag_mean

	The mean of the time domian body accelerometer Magnitude value

###tBodyAccMag_std

	The standard deviation of the time domian body accelerometer Magnitude value

###tGravityAccMag_mean

	The mean of the time domian gravity accelerometer Magnitude value

###tGravityAccMag_std

	The standard deviation of the time domian gravity accelerometer Magnitude value

###tBodyAccJerkMag_mean

	The mean of the time domian body jerk accelerometer Magnitude

###tBodyAccJerkMag_std

	The standard deviation of the time domian body jerk accelerometer Magnitude

###tBodyGyroMag_mean

	The mean of the time domian body gyroscope magnitude

###tBodyGyroMag_std

	The standard deviation of the time domian body gyroscope magnitude

###tBodyGyroJerkMag_mean

	The mean of the time domian body gyroscope jerk magnitude

###tBodyGyroJerkMag_std

	The standard deviation of the time domian body gyroscope jerk magnitude

###fBodyAcc_mean_X

	The mean of the frequency domian body accelerometer value for X axis

###fBodyAcc_mean_Y

	The mean of the frequency domian body accelerometer value for Y axis

###fBodyAcc_mean_Z

	The mean of the frequency domian body accelerometer value for Z axis

###fBodyAcc_std_X

	The standard deviation of the frequency domian body accelerometer value for X axis

###fBodyAcc_std_Y

	The standard deviation of the frequency domian body accelerometer value for Y axis

###fBodyAcc_std_Z

	The standard deviation of the frequency domian body accelerometer value for Z axis

###fBodyAccJerk_mean_X

	The mean of the frequency domian body jerk accelerometer value for X axis

###fBodyAccJerk_mean_Y

	The mean of the frequency domian body jerk accelerometer value for Y axis

###fBodyAccJerk_mean_Z

	The mean of the frequency domian body jerk accelerometer value for Z axis

###fBodyAccJerk_std_X

	The standard deviation of the frequency domian body jerk accelerometer value for X axis

###fBodyAccJerk_std_Y

	The standard deviation of the frequency domian body jerk accelerometer value for Y axis

###fBodyAccJerk_std_Z

	The standard deviation of the frequency domian body jerk accelerometer value for Z axis

###fBodyGyro_mean_X

	The mean of the frequency domian body gyroscope value for X axis

###fBodyGyro_mean_Y

	The mean of the frequency domian body gyroscope value for Y axis

###fBodyGyro_mean_Z

	The mean of the frequency domian body gyroscope value for Z axis

###fBodyGyro_std_X

	The standard deviation of the frequency domian body gyroscope value for X axis

###fBodyGyro_std_Y

	The standard deviation of the frequency domian body gyroscope value for Y axis

###fBodyGyro_std_Z

	The standard deviation of the frequency domian body gyroscope value for Z axis

###fBodyAccMag_mean

	The mean of the frequency domian body accelerometer magnitude

###fBodyAccMag_std

	The standard deviation of the frequency domian body accelerometer magnitude

###fBodyAccJerkMag_mean

	The mean of the frequency domian body jerk accelerometer magnitude

###fBodyAccJerkMag_std

	The standard deviation of the frequency domian body jerk accelerometer magnitude

###fBodyGyroMag_mean

	The mean of the frequency domian body gyroscope magnitude

###fBodyGyroMag_std

	The standard deviation of the frequency domian body gyroscope magnitude

###fBodyGyroJerkMag_mean

	The mean of the frequency domian body jerk gyroscope magnitude

###fBodyGyroJerkMag_std

	The standard deviation of the frequency domian body gyroscope jerk magnitude


##Additional Notes

1. Note on variable names.  
For all vairable names except activity and subject, refer the variable tBodyAcc_mean_X for details on how it is derived
All varaibles except activity and subject are normalized between 1 and -1
2. The raw data was split between two databases namely, train and test.  This is merged here
3. The raw data has 561 observations( excluding activity and subject).  of this, only the mean and standard deviation values are selected

4.  There are 8 xyz variable (ie 8* 3 = 24) and 9 other variarables in the raw data for which sevral functions are applied.   
So total variable = 24+ 9 = 33. mean and std for these 33 variables means total 33 * 2 = 66 variables
We are ignoring the meanFreq function as well as the 5 angle means  viz, gravityMean, tBodyAccMean, tBodyAccJerkMean, tBodyGyroMean and tBodyGyroJerkMean.  The reason is that they dont have std deviation

