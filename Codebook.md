# Code book for Coursera Getting and Clearning Data course project
This is a code book for user to better undertand variables of final output tidy_data.txt file.

# Source Data Set Informaiton
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

# Output file
output file is labelled as tidy_data.txt, it's space-separated cells.
The first row contains the names of variables. There are 81 variabls includes 2 dimensions, and 79 measures.

# Variables

- [1] "subject" 

       Subject key ranges from 1 to 30 
- [2] "activity" 

       Activity identifier, string with 6 possible values:

      - WALKING: subject was walking
      - WALKING_UPSTAIRS: subject was walking upstairs
      - WALKING_DOWNSTAIRS: subject was walking downstairs
      - SITTING: subject was sitting
      - STANDING: subject was standing
      - LAYING: subject was laying
- For the variables with begains with wording "Time", resulting from the capture of accelerometer and gyrosscope raw signals.
Calculation of Mean, Standard Deviation from X,Y,Z directions had been performed on various measurement method.

 [3] "TimeBodyAccelerometer-Mean()-X"
 [4] "TimeBodyAccelerometer-Mean()-Y"                             
 [5] "TimeBodyAccelerometer-Mean()-Z" 
 [6] "TimeBodyAccelerometer-StandardDeviation()-X"                
 [7] "TimeBodyAccelerometer-StandardDeviation()-Y"                
 [8] "TimeBodyAccelerometer-StandardDeviation()-Z"                
 [9] "TimeGravityAccelerometer-Mean()-X"                          
[10] "TimeGravityAccelerometer-Mean()-Y"                          
[11] "TimeGravityAccelerometer-Mean()-Z"                          
[12] "TimeGravityAccelerometer-StandardDeviation()-X"             
[13] "TimeGravityAccelerometer-StandardDeviation()-Y"             
[14] "TimeGravityAccelerometer-StandardDeviation()-Z"             
[15] "TimeBodyAccelerometerJerk-Mean()-X"                         
[16] "TimeBodyAccelerometerJerk-Mean()-Y"                         
[17] "TimeBodyAccelerometerJerk-Mean()-Z"                         
[18] "TimeBodyAccelerometerJerk-StandardDeviation()-X"            
[19] "TimeBodyAccelerometerJerk-StandardDeviation()-Y"            
[20] "TimeBodyAccelerometerJerk-StandardDeviation()-Z"            
[21] "TimeBodyGyroscope-Mean()-X"                                 
[22] "TimeBodyGyroscope-Mean()-Y"                                 
[23] "TimeBodyGyroscope-Mean()-Z"                                 
[24] "TimeBodyGyroscope-StandardDeviation()-X"                    
[25] "TimeBodyGyroscope-StandardDeviation()-Y"                    
[26] "TimeBodyGyroscope-StandardDeviation()-Z"                    
[27] "TimeBodyGyroscopeJerk-Mean()-X"                             
[28] "TimeBodyGyroscopeJerk-Mean()-Y"                             
[29] "TimeBodyGyroscopeJerk-Mean()-Z"                             
[30] "TimeBodyGyroscopeJerk-StandardDeviation()-X"                
[31] "TimeBodyGyroscopeJerk-StandardDeviation()-Y"                
[32] "TimeBodyGyroscopeJerk-StandardDeviation()-Z"                
[33] "TimeBodyAccelerometerMagnitude-Mean()"                      
[34] "TimeBodyAccelerometerMagnitude-StandardDeviation()"         
[35] "TimeGravityAccelerometerMagnitude-Mean()"                   
[36] "TimeGravityAccelerometerMagnitude-StandardDeviation()"      
[37] "TimeBodyAccelerometerJerkMagnitude-Mean()"                  
[38] "TimeBodyAccelerometerJerkMagnitude-StandardDeviation()"     
[39] "TimeBodyGyroscopeMagnitude-Mean()"                          
[40] "TimeBodyGyroscopeMagnitude-StandardDeviation()"             
[41] "TimeBodyGyroscopeJerkMagnitude-Mean()"                      
[42] "TimeBodyGyroscopeJerkMagnitude-StandardDeviation()"   

- For the variables with begains with wording "Frequency", resulting from the application of a Fast Fourier Transform (FFT) to some of the time-domain signals.
Calculation of Mean, Standard Deviation and Weighted average of the frequency from X,Y,Z directions had been performed on various measurement method.

[43] "FrequencyBodyAccelerometer-Mean()-X"                        
[44] "FrequencyBodyAccelerometer-Mean()-Y"                        
[45] "FrequencyBodyAccelerometer-Mean()-Z"                        
[46] "FrequencyBodyAccelerometer-StandardDeviation()-X"           
[47] "FrequencyBodyAccelerometer-StandardDeviation()-Y"           
[48] "FrequencyBodyAccelerometer-StandardDeviation()-Z"           
[49] "FrequencyBodyAccelerometer-MeanFreq()-X"                    
[50] "FrequencyBodyAccelerometer-MeanFreq()-Y"                    
[51] "FrequencyBodyAccelerometer-MeanFreq()-Z"                    
[52] "FrequencyBodyAccelerometerJerk-Mean()-X"                    
[53] "FrequencyBodyAccelerometerJerk-Mean()-Y"                    
[54] "FrequencyBodyAccelerometerJerk-Mean()-Z"                    
[55] "FrequencyBodyAccelerometerJerk-StandardDeviation()-X"       
[56] "FrequencyBodyAccelerometerJerk-StandardDeviation()-Y"       
[57] "FrequencyBodyAccelerometerJerk-StandardDeviation()-Z"       
[58] "FrequencyBodyAccelerometerJerk-MeanFreq()-X"                
[59] "FrequencyBodyAccelerometerJerk-MeanFreq()-Y"                
[60] "FrequencyBodyAccelerometerJerk-MeanFreq()-Z"                
[61] "FrequencyBodyGyroscope-Mean()-X"                            
[62] "FrequencyBodyGyroscope-Mean()-Y"                            
[63] "FrequencyBodyGyroscope-Mean()-Z"                            
[64] "FrequencyBodyGyroscope-StandardDeviation()-X"               
[65] "FrequencyBodyGyroscope-StandardDeviation()-Y"               
[66] "FrequencyBodyGyroscope-StandardDeviation()-Z"               
[67] "FrequencyBodyGyroscope-MeanFreq()-X"                        
[68] "FrequencyBodyGyroscope-MeanFreq()-Y"                        
[69] "FrequencyBodyGyroscope-MeanFreq()-Z"                        
[70] "FrequencyBodyAccelerometerMagnitude-Mean()"                 
[71] "FrequencyBodyAccelerometerMagnitude-StandardDeviation()"    
[72] "FrequencyBodyAccelerometerMagnitude-MeanFreq()"             
[73] "FrequencyBodyAccelerometerJerkMagnitude-Mean()"             
[74] "FrequencyBodyAccelerometerJerkMagnitude-StandardDeviation()"
[75] "FrequencyBodyAccelerometerJerkMagnitude-MeanFreq()"         
[76] "FrequencyBodyGyroscopeMagnitude-Mean()"                     
[77] "FrequencyBodyGyroscopeMagnitude-StandardDeviation()"        
[78] "FrequencyBodyGyroscopeMagnitude-MeanFreq()"                 
[79] "FrequencyBodyGyroscopeJerkMagnitude-Mean()"                 
[80] "FrequencyBodyGyroscopeJerkMagnitude-StandardDeviation()"    
[81] "FrequencyBodyGyroscopeJerkMagnitude-MeanFreq()"      

# Transformation
To get from the Raw Data to the Tidy Data the following transformations were made. These transformations can be executed with the script ‘run_analysis.R’.

Merged the training and test sets to create one data set.

Extracted only the measurements on the mean and standard deviation for each measurement.

Used descriptive activity names to name the activities in the data set.

Appropriately labeled the data set with descriptive variable names.

From the data set in step 4, created a second, independent tidy data set with the average of each variable for each activity and each subject.
