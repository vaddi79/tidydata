                        ## Project Description ##
     
     
   ## Human Activity Recognition Using Smartphones Data Set 
   
    Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

              ##Collection of the raw data
              
              data collected from the accelerometers from the Samsung Galaxy S smartphone. 
 
          Triaxial acceleration from the accelerometer (total acceleration) and the estimated body                         acceleration. 
        - Triaxial Angular velocity from the gyroscope. 
        - A 561-feature vector with time and frequency domain variables. 
        - Its activity label. 
        - An identifier of the subject who carried out the experiment.


              

 
             ##  Notes on the original (raw) data
             
        The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.  


             ##Description of the variables ##
             
             
    The features selected for this database come from the accelerometer
 and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured 
at a constant rate of 50 Hz.
Then they were filtered using a median filter and a 3rd order 
low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
 Similarly, the acceleration signal was then separated into body and 
 gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ)
 using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived
 in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the 
Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing
 fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag.
 (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ,
tGravityAcc-XYZ,
tBodyAccJerk-XYZ,
tBodyGyro-XYZ,
tBodyGyroJerk-XYZ,
tBodyAccMag,
tGravityAccMag,
tBodyAccJerkMag,
tBodyGyroMag,
tBodyGyroJerkMag,
fBodyAcc-XYZ,
fBodyAccJerk-XYZ,
fBodyGyro-XYZ,
fBodyAccMag,
fBodyAccJerkMag,
fBodyGyroMag,
fBodyGyroJerkMag,

The set of variables that were estimated from these signals are: 

mean(): Mean value,
std(): Standard deviation,
mad(): Median absolute deviation ,
max(): Largest value in array,
min(): Smallest value in array,
sma(): Signal magnitude area,
energy(): Energy measure. Sum of the squares divided by the number of values., 
iqr(): Interquartile range,
entropy(): Signal entropy,
arCoeff(): Autorregresion coefficients with Burg order equal to 4,
correlation(): correlation coefficient between two signals,
maxInds(): index of the frequency component with largest magnitude,
meanFreq(): Weighted average of the frequency components to obtain a mean frequency,
skewness(): skewness of the frequency domain signal ,
kurtosis(): kurtosis of the frequency domain signal ,
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.,
angle(): Angle between to vectors.,

Additional vectors obtained by averaging the signals in a signal window sample.,
 These are used on the angle() variable:

gravityMean,
tBodyAccMean,
tBodyAccJerkMean,
tBodyGyroMean,
tBodyGyroJerkMean,
             
              ##TIDY DATA ##
         Tidydata  variables are average of each variable for each activity(1 to 6) and each subject (ID 1 to 30) ,subject "ID" and activity are observations in rows and remaining measurements are variables(in columns)      
             
VARIABLES IN TIDY DATA ARE THE MEAN (AVERAGE) OF THE FOLLOWING VARIABLES

1)tBy.Accmean.X.=> tBodyAcc-mean()-X AXIS    (t=> indicates time domain)
2)tBy.Accmean.Y.=> tBodyAcc-mean()-Y AXIS
3)tBy.Accmean.Z.=> tBodyAcc-mean()-Z AXIS
4)tG.Accmean.X.=>  tGravityAcc-mean()-X
5)tG.Accmean.Y.=> tGravityAcc-mean()-X
6)tG.Accmean.Z.=> tGravityAcc-mean()-X
7)tBy.AccJ.mean.X.=> tBodyAccJerk-mean()-X
8)tBy.AccJ.mean.Y.=> tBodyAccJerk-mean()-Y
9)tBy.AccJ.mean.Z.=> tBodyAccJerk-mean()-Z
10)tBy.Gy.mean.X.=> tBodyGyro-mean()-X
11)tBy.Gy.mean.Y.=> tBodyGyro-mean()-Y
12)tBy.Gy.mean.Z.=> tBodyGyro-mean()-Z
13)tBy.Gy.J.mean.X.=> tBodyGyroJerk-mean()-X
14)tBy.Gy.J.mean.Y.=> tBodyGyroJerk-mean()-Y
15)tBy.Gy.J.mean.Z.=> tBodyGyroJerk-mean()-Z
16)tBy.AccMagmean.=> tBodyAccMag-mean()
17)tG.AccMagmean.=> tGravityAccMag-mean()
18)tBy.AccJ.Magmean.=> tBodyAccJerkMag-mean()
19)tBy.Gy.Magmean.=>  tBodyGyroMag-mean()
20)tBy.Gy.J.Magmean.=> tBodyGyroJerkMag-mean()
21)fBy.Accmean.X.=>  fBodyAcc-mean()-X   (f INDICATES frequency domain)
22)fBy.Accmean.Y.=>  fBodyAcc-mean()-Y
23)fBy.Accmean.Z.=>  fBodyAcc-mean()-Z
24)fBy.Accmean.FyX.=> fBodyAcc-meanFreq()-X
25)fBy.Accmean.FyY.=> fBodyAcc-meanFreq()-Y
26)fBy.Accmean.FyZ.=> fBodyAcc-meanFreq()-Z
27)fBy.AccJ.mean.X.=> fBodyAccJerk-mean()-X
28)fBy.AccJ.mean.Y.=> fBodyAccJerk-mean()-Y
29)fBy.AccJ.mean.Z.=> fBodyAccJerk-mean()-Z
30)fBy.AccJ.mean.FyX.=> fBodyAccJerk-meanFreq()-X
31)fBy.AccJ.mean.FyY.=> fBodyAccJerk-meanFreq()-Y
32)fBy.AccJ.mean.FyZ.=> fBodyAccJerk-meanFreq()-Z
33)fBy.Gy.mean.X.=> fBodyGyro-mean()-X
34)fBy.Gy.mean.Y.=> fBodyGyro-mean()-Y
35)fBy.Gy.mean.Z.=> fBodyGyro-mean()-Z
36)fBy.Gy.mean.FyX.=> fBodyGyro-meanFreq()-X
37)fBy.Gy.mean.FyY.=> fBodyGyro-meanFreq()-Y
38)fBy.Gy.mean.FyZ.=> fBodyGyro-meanFreq()-Z
39)fBy.AccMagmean.=> fBodyAccMag-mean()
40)fBy.AccMagmean.Fy.=> fBodyAccMag-meanFreq()
41)fBy.By.AccJ.Magmean.=>. fBodyBodyAccJerkMag-mean()
42)fBy.By.AccJ.Magmean.Fy. => fBodyBodyAccJerkMag-meanFreq()
43)fBy.By.Gy.Magmean.=>  fBodyBodyGyroMag-mean()
44)fBy.By.Gy.Magmean.Fy.=> fBodyBodyGyroMag-meanFreq()
45)fBy.By.Gy.J.Magmean.=>  fBodyBodyGyroJerkMag-mean()
46)fBy.By.Gy.J.Magmean.Fy.=>  fBodyBodyGyroJerkMag-meanFreq()
47)angletBy.AccMean.G.=> angle(tBodyAccMean,gravity)
48)angletBy.AccJ.Mean.G.Mean.=> angle(tBodyAccJerkMean),gravityMean)
49)angletBy.Gy.Mean.G.Mean.=>.   angle(tBodyGyroMean,gravityMean)
50)angletBy.Gy.J.Mean.G.Mean.=>  angle(tBodyGyroJerkMean,gravityMean)
51)angleXG.Mean.=>  angle(X,gravityMean)
52)angleYG.Mean.=> angle(Y,gravityMean)
53)angleZG.Mean.=> angle(Z,gravityMean)
54)tBy.AccstdX.=> tBodyAcc-std()-X
55)tBy.AccstdY.=> tBodyAcc-std()-Y
56)tBy.AccstdZ.=> tBodyAcc-std()-Z
57)tG.AccstdX.=>  tGravityAcc-std()-X
58)tG.AccstdY.=>  tGravityAcc-std()-Y
59)tG.AccstdZ.=>  tGravityAcc-std()-Z
60)tBy.AccJ.stdX.=>  tBodyAccJerk-std()-X
61)tBy.AccJ.stdY.=>  tBodyAccJerk-std()-Y
62)tBy.AccJ.stdZ.=>  tBodyAccJerk-std()-Z
63)tBy.Gy.stdX.=>  tBodyGyro-std()-X
64)tBy.Gy.stdY.=>  tBodyGyro-std()-Y
65)tBy.Gy.stdZ.=>  tBodyGyro-std()-Z
66)tBy.Gy.J.stdX.=>  tBodyGyroJerk-std()-X
67)tBy.Gy.J.stdY.=>  tBodyGyroJerk-std()-Y
68)tBy.Gy.J.stdZ.=>  tBodyGyroJerk-std()-Z
69)tBy.AccMagstd.=>  tBodyAccMag-std()
70)tG.AccMagstd.=>  tGravityAccMag-std()
71)tBy.AccJ.Magstd.=>  tBodyAccJerkMag-std()
72)tBy.Gy.Magstd.=>  tBodyGyroMag-std()
73)tBy.Gy.J.Magstd.=>  tBodyGyroJerkMag-std()
74)fBy.AccstdX.=>  fBodyAcc-std()-X
75)fBy.AccstdY.=>  fBodyAcc-std()-Y
76)fBy.AccstdZ.=>  fBodyAcc-std()-Z
77)fBy.AccJ.stdX.=>  fBodyAccJerk-std()-X
78)fBy.AccJ.stdY.=>  fBodyAccJerk-std()-Y
79)fBy.AccJ.stdZ.=>  fBodyAccJerk-std()-Z
80)fBy.Gy.stdX.=>  fBodyGyro-std()-X
81)fBy.Gy.stdY.=>  fBodyGyro-std()-Y
82)fBy.Gy.stdZ.=>  fBodyGyro-std()-Z
83)fBy.AccMagstd.=>  fBodyAccMag-std()
84)fBy.By.AccJ.Magstd.=>  fBodyBodyGyroMag-std()
85)fBy.By.Gy.Magstd.=>  fBodyBodyGyroMag-std()
86)fBy.By.Gy.J.Magstd=>  fBodyBodyGyroJerkMag-std()

