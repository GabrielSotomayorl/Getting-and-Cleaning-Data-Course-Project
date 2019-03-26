# Code book

This document describes the data contained in the TidyData.txt file

## Data Transformations
Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
The Data was transformed on tidy data as can be observed in the TidyDataPreparation.R file.
The transformations performed was:
1. Download and extract the data
2. The training and the test sets were merged to create one data set.
3. Only the measurements on the mean and standard deviation for each measurement were extracted.
4. The activity names were changed from integers to descriptive activity names.
5. Appropriately labels the data set with descriptive variable names.
6. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## Variables
1. "subject" The number of the subjects of the experiment
2. "activity" The activity performed
    - WALKING
    - WALKING_UPSTAIRS
    - WALKING_DOWNSTAIRS
    - SITTING
    - STANDING
    - LAYING

### Time signals 
#### Mean time body acceleration in the X, Y and Z directions
- "timeBodyAccelerometerMeanX"                          
- "timeBodyAccelerometerMeanY"                          
- "timeBodyAccelerometerMeanZ"

#### STD time body acceleration in the X, Y and Z directions
- "timeBodyAccelerometerSTDX"                           
- "timeBodyAccelerometerSTDY"                           
- "timeBodyAccelerometerSTDZ"  

#### Mean time gravity acceleration in the X, Y and Z directions
- "timeGravityAccelerometerMeanX"                       
- "timeGravityAccelerometerMeanY"                       
- "timeGravityAccelerometerMeanZ" 

#### STD time gravity acceleration in the X, Y and Z directions
- "timeGravityAccelerometerSTDX"                        
- "timeGravityAccelerometerSTDY"                        
- "timeGravityAccelerometerSTDZ"  

#### Mean time body acceleration jerk in the X, Y and Z directions
- "timeBodyAccelerometerJerkMeanX"                      
- "timeBodyAccelerometerJerkMeanY"                      
- "timeBodyAccelerometerJerkMeanZ" 

#### STD time body acceleration jerk in the X, Y and Z directions
- "timeBodyAccelerometerJerkSTDX"                       
- "timeBodyAccelerometerJerkSTDY"                       
- "timeBodyAccelerometerJerkSTDZ"  

#### Mean time body angular velocity in the X, Y and Z directions
- "timeBodyGyroscopeMeanX"                              
- "timeBodyGyroscopeMeanY"                              
- "timeBodyGyroscopeMeanZ"   

#### STD time body angular velocity in the X, Y and Z directions
- "timeBodyGyroscopeSTDX"                               
- "timeBodyGyroscopeSTDY"                               
- "timeBodyGyroscopeSTDZ"  

#### Mean time body angular velocity jerk in the X, Y and Z directions
- "timeBodyGyroscopeJerkMeanX"                          
- "timeBodyGyroscopeJerkMeanY"                          
- "timeBodyGyroscopeJerkMeanZ"   

#### STD time body angular velocity jerk in the X, Y and Z directions
- "timeBodyGyroscopeJerkSTDX"                           
- "timeBodyGyroscopeJerkSTDY"                           
- "timeBodyGyroscopeJerkSTDZ"  

#### Mean and STD of the time magnitude of body acceleration
- "timeBodyAccelerometerMagnitudeMean"                  
- "timeBodyAccelerometerMagnitudeSTD" 

#### Mean and STD of the time magnitude of gravity acceleration
- "timeGravityAccelerometerMagnitudeMean"               
- "timeGravityAccelerometerMagnitudeSTD" 

#### Mean and STD of the time magnitude of body acceleration Jerk
- "timeBodyAccelerometerJerkMagnitudeMean"              
- "timeBodyAccelerometerJerkMagnitudeSTD"  

#### Mean and STD of the time magnitude of body angular velocity 
- "timeBodyGyroscopeMagnitudeMean"                      
- "timeBodyGyroscopeMagnitudeSTD"    

#### Mean and STD of the time magnitude of body angular velocity jerk
- "timeBodyGyroscopeJerkMagnitudeMean"                  
- "timeBodyGyroscopeJerkMagnitudeSTD"

###Frequency signals

#### Mean frequency body acceleration in the X, Y and Z directions
- "frequencyBodyAccelerometerMeanX"                     
- "frequencyBodyAccelerometerMeanY"                     
- "frequencyBodyAccelerometerMeanZ"  

#### STD frequency body acceleration in the X, Y and Z directions
- "frequencyBodyAccelerometerSTDX"                      
- "frequencyBodyAccelerometerSTDY"                      
- "frequencyBodyAccelerometerSTDZ"   

#### Weighted average of the frequency components of the frequency body acceleration in the X, Y and Z directions
- "frequencyBodyAccelerometerMeanFrequencyX"            
- "frequencyBodyAccelerometerMeanFrequencyY"            
- "frequencyBodyAccelerometerMeanFrequencyZ"     

#### Mean frequency body acceleration Jerk in the X, Y and Z directions
- "frequencyBodyAccelerometerJerkMeanX"                 
- "frequencyBodyAccelerometerJerkMeanY"                 
- "frequencyBodyAccelerometerJerkMeanZ"  

#### STD frequency body acceleration Jerk in the X, Y and Z directions
- "frequencyBodyAccelerometerJerkSTDX"                  
- "frequencyBodyAccelerometerJerkSTDY" 
- "frequencyBodyAccelerometerJerkSTDZ"  

#### Weighted average of the frequency components of the frequency body acceleration Jerk in the X, Y and Z directions
- "frequencyBodyAccelerometerJerkMeanFrequencyX"        
- "frequencyBodyAccelerometerJerkMeanFrequencyY"        
- "frequencyBodyAccelerometerJerkMeanFrequencyZ"  

#### Mean frequency body angular velocity in the X, Y and Z directions
- "frequencyBodyGyroscopeMeanX"                         
- "frequencyBodyGyroscopeMeanY"                         
- "frequencyBodyGyroscopeMeanZ"  

#### STD frequency body angular velocity in the X, Y and Z directions
- "frequencyBodyGyroscopeSTDX"                          
- "frequencyBodyGyroscopeSTDY"                          
- "frequencyBodyGyroscopeSTDZ"  

#### Weighted average frequency body angular velocity in the X, Y and Z directions
- "frequencyBodyGyroscopeMeanFrequencyX"                
- "frequencyBodyGyroscopeMeanFrequencyY"                
- "frequencyBodyGyroscopeMeanFrequencyZ" 

#### Mean, STD, and weighted average of the frequency components of the frequency magnitude of body acceleration
- "frequencyBodyAccelerometerMagnitudeMean"             
- "frequencyBodyAccelerometerMagnitudeSTD"    
- "frequencyBodyAccelerometerMagnitudeMeanFrequency"    

#### Mean, STD, and weighted average of the frequency components of the frequency magnitude of body acceleration Jerk
- "frequencyBodyAccelerometerJerkMagnitudeMean"      
- "frequencyBodyAccelerometerJerkMagnitudeSTD"          
- "frequencyBodyAccelerometerJerkMagnitudeMeanFrequency"

#### Mean, STD, and weighted average of the frequency components of the frequency magnitude of body angular velocity
- "frequencyBodyGyroscopeMagnitudeMean"                 
- "frequencyBodyGyroscopeMagnitudeSTD"                  
- "frequencyBodyGyroscopeMagnitudeMeanFrequency"  

#### Mean, STD, and weighted average of the frequency components of the frequency magnitude of body angular velocity Jerk
- "frequencyBodyGyroscopeJerkMagnitudeMean"             
- "frequencyBodyGyroscopeJerkMagnitudeSTD"              
- "frequencyBodyGyroscopeJerkMagnitudeMeanFrequency"  
