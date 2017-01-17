
##DATA DICTIONARY - tidydata.txt

*subjectId

Unique Identifier of the Subject of the Experiment 
Takes Values 1-30

*activityLabel
Describes the Activity the Subject was undertaking when measured
Takes Values:
LAYING
SITTING
STANDING
WALKING
WALKING_DOWNSTAIRS
WALKING_UPSTAIRS

*tBodyAcc-mean()-X	mean value of this measurement
*tBodyAcc-mean()-Y	mean value of this measurement
*tBodyAcc-mean()-Z	mean value of this measurement
*tBodyAcc-std()-X	mean value of this measurement
*tBodyAcc-std()-Y	mean value of this measurement
*tBodyAcc-std()-Z	mean value of this measurement
*tGravityAcc-mean()-X	mean value of this measurement
*tGravityAcc-mean()-Y	mean value of this measurement
*tGravityAcc-mean()-Z	mean value of this measurement
*tGravityAcc-std()-X	mean value of this measurement
*tGravityAcc-std()-Y	mean value of this measurement
*tGravityAcc-std()-Z	mean value of this measurement
*tBodyAccJerk-mean()-X	mean value of this measurement
*tBodyAccJerk-mean()-Y	mean value of this measurement
*tBodyAccJerk-mean()-Z	mean value of this measurement
*tBodyAccJerk-std()-X	mean value of this measurement
*tBodyAccJerk-std()-Y	mean value of this measurement
*tBodyAccJerk-std()-Z	mean value of this measurement
*tBodyGyro-mean()-X	mean value of this measurement
*tBodyGyro-mean()-Y	mean value of this measurement
*tBodyGyro-mean()-Z	mean value of this measurement
*tBodyGyro-std()-X	mean value of this measurement
*tBodyGyro-std()-Y	mean value of this measurement
*tBodyGyro-std()-Z	mean value of this measurement
*tBodyGyroJerk-mean()-X	mean value of this measurement
*tBodyGyroJerk-mean()-Y	mean value of this measurement
*tBodyGyroJerk-mean()-Z	mean value of this measurement
*tBodyGyroJerk-std()-X	mean value of this measurement
*tBodyGyroJerk-std()-Y	mean value of this measurement
*tBodyGyroJerk-std()-Z	mean value of this measurement
*tBodyAccMag-mean()	mean value of this measurement
*tBodyAccMag-std()	mean value of this measurement
*tGravityAccMag-mean()	mean value of this measurement
*tGravityAccMag-std()	mean value of this measurement
*tBodyAccJerkMag-mean()	mean value of this measurement
*tBodyAccJerkMag-std()	mean value of this measurement
*tBodyGyroMag-mean()	mean value of this measurement
*tBodyGyroMag-std()	mean value of this measurement
*tBodyGyroJerkMag-mean()	mean value of this measurement
*tBodyGyroJerkMag-std()	mean value of this measurement
*fBodyAcc-mean()-X	mean value of this measurement
*fBodyAcc-mean()-Y	mean value of this measurement
*fBodyAcc-mean()-Z	mean value of this measurement
*fBodyAcc-std()-X	mean value of this measurement
*fBodyAcc-std()-Y	mean value of this measurement
*fBodyAcc-std()-Z	mean value of this measurement
*fBodyAccJerk-mean()-X	mean value of this measurement
*fBodyAccJerk-mean()-Y	mean value of this measurement
*fBodyAccJerk-mean()-Z	mean value of this measurement
*fBodyAccJerk-std()-X	mean value of this measurement
*fBodyAccJerk-std()-Y	mean value of this measurement
*fBodyAccJerk-std()-Z	mean value of this measurement
*fBodyGyro-mean()-X	mean value of this measurement
*fBodyGyro-mean()-Y	mean value of this measurement
*fBodyGyro-mean()-Z	mean value of this measurement
*fBodyGyro-std()-X	mean value of this measurement
*fBodyGyro-std()-Y	mean value of this measurement
*fBodyGyro-std()-Z	mean value of this measurement
*fBodyAccMag-mean()	mean value of this measurement
*fBodyAccMag-std()	mean value of this measurement
*fBodyBodyAccJerkMag-mean()	mean value of this measurement
*fBodyBodyAccJerkMag-std()	mean value of this measurement
*fBodyBodyGyroMag-mean()	mean value of this measurement
*fBodyBodyGyroMag-std()	mean value of this measurement
*fBodyBodyGyroJerkMag-mean()	mean value of this measurement
*fBodyBodyGyroJerkMag-std()	mean value of this measurement
*activityLabel	mean value of this measurement


##The information below is all taken directly from the features_info.txt that was provided forthe assignemtn

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'



