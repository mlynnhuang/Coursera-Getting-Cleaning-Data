			                                                                                                                                                                  				Data Dictionary in Getting and Cleaning Data Course Project
							Lynn Huang, July 26, 10`5


This document is written based on the information from the README.txt, and feature_info.txt and features.txt, activity_labels.txt tables bundled from the data from the below link.

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


In the features_info.txt, the following info displays

---------------------------------------------------------------------
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

-------------------------------------------------------------------------

My version of codebook

So in the dataset in the my R program, the column names for the train and test sets are corresponding to the names described in feature_info.txt and features.txt

1. for dataset, "xtraindat" and "xtestdat"

variables are created from each time domain,three-dimensionalsignal signals, e.g. tBodyAcc, or frequence domain three-dimensional signals, e.g. fBodyAcc, after FFT (Fast Fourier Transform) was applied to some of these signals 

Column 1-40 related to 

tBodyAcc-"

  [1] "tBodyAcc-mean()-X"                    "tBodyAcc-mean()-Y"                   
  [3] "tBodyAcc-mean()-Z"                    "tBodyAcc-std()-X"                    
  [5] "tBodyAcc-std()-Y"                     "tBodyAcc-std()-Z"                    
  [7] "tBodyAcc-mad()-X"                     "tBodyAcc-mad()-Y"                    
  [9] "tBodyAcc-mad()-Z"                     "tBodyAcc-max()-X"                    
 [11] "tBodyAcc-max()-Y"                     "tBodyAcc-max()-Z"                    
 [13] "tBodyAcc-min()-X"                     "tBodyAcc-min()-Y"                    
 [15] "tBodyAcc-min()-Z"                     "tBodyAcc-sma()"                      
 [17] "tBodyAcc-energy()-X"                  "tBodyAcc-energy()-Y"                 
 [19] "tBodyAcc-energy()-Z"                  "tBodyAcc-iqr()-X"                    
 [21] "tBodyAcc-iqr()-Y"                     "tBodyAcc-iqr()-Z"                    
 [23] "tBodyAcc-entropy()-X"                 "tBodyAcc-entropy()-Y"                
 [25] "tBodyAcc-entropy()-Z"                 "tBodyAcc-arCoeff()-X,1"              
 [27] "tBodyAcc-arCoeff()-X,2"               "tBodyAcc-arCoeff()-X,3"              
 [29] "tBodyAcc-arCoeff()-X,4"               "tBodyAcc-arCoeff()-Y,1"              
 [31] "tBodyAcc-arCoeff()-Y,2"               "tBodyAcc-arCoeff()-Y,3"              
 [33] "tBodyAcc-arCoeff()-Y,4"               "tBodyAcc-arCoeff()-Z,1"              
 [35] "tBodyAcc-arCoeff()-Z,2"               "tBodyAcc-arCoeff()-Z,3"              
 [37] "tBodyAcc-arCoeff()-Z,4"               "tBodyAcc-correlation()-X,Y"          
 [39] "tBodyAcc-correlation()-X,Z"           "tBodyAcc-correlation()-Y,Z" 

Column 41-80 related to 

"tGravityAcc-"


[41] "tGravityAcc-mean()-X"                 "tGravityAcc-mean()-Y"                
 [43] "tGravityAcc-mean()-Z"                 "tGravityAcc-std()-X"                 
 [45] "tGravityAcc-std()-Y"                  "tGravityAcc-std()-Z"                 
 [47] "tGravityAcc-mad()-X"                  "tGravityAcc-mad()-Y"                 
 [49] "tGravityAcc-mad()-Z"                  "tGravityAcc-max()-X"                 
 [51] "tGravityAcc-max()-Y"                  "tGravityAcc-max()-Z"                 
 [53] "tGravityAcc-min()-X"                  "tGravityAcc-min()-Y"                 
 [55] "tGravityAcc-min()-Z"                  "tGravityAcc-sma()"                   
 [57] "tGravityAcc-energy()-X"               "tGravityAcc-energy()-Y"              
 [59] "tGravityAcc-energy()-Z"               "tGravityAcc-iqr()-X"                 
 [61] "tGravityAcc-iqr()-Y"                  "tGravityAcc-iqr()-Z"                 
 [63] "tGravityAcc-entropy()-X"              "tGravityAcc-entropy()-Y"             
 [65] "tGravityAcc-entropy()-Z"              "tGravityAcc-arCoeff()-X,1"           
 [67] "tGravityAcc-arCoeff()-X,2"            "tGravityAcc-arCoeff()-X,3"           
 [69] "tGravityAcc-arCoeff()-X,4"            "tGravityAcc-arCoeff()-Y,1"           
 [71] "tGravityAcc-arCoeff()-Y,2"            "tGravityAcc-arCoeff()-Y,3"           
 [73] "tGravityAcc-arCoeff()-Y,4"            "tGravityAcc-arCoeff()-Z,1"           
 [75] "tGravityAcc-arCoeff()-Z,2"            "tGravityAcc-arCoeff()-Z,3"           
 [77] "tGravityAcc-arCoeff()-Z,4"            "tGravityAcc-correlation()-X,Y"       
 [79] "tGravityAcc-correlation()-X,Z"        "tGravityAcc-correlation()-Y,Z"  

Column 81-120 related to

"tBodyAccJerk-"

 [81] "tBodyAccJerk-mean()-X"                "tBodyAccJerk-mean()-Y"               
 [83] "tBodyAccJerk-mean()-Z"                "tBodyAccJerk-std()-X"                
 [85] "tBodyAccJerk-std()-Y"                 "tBodyAccJerk-std()-Z"                
 [87] "tBodyAccJerk-mad()-X"                 "tBodyAccJerk-mad()-Y"                
 [89] "tBodyAccJerk-mad()-Z"                 "tBodyAccJerk-max()-X"                
 [91] "tBodyAccJerk-max()-Y"                 "tBodyAccJerk-max()-Z"                
 [93] "tBodyAccJerk-min()-X"                 "tBodyAccJerk-min()-Y"                
 [95] "tBodyAccJerk-min()-Z"                 "tBodyAccJerk-sma()"                  
 [97] "tBodyAccJerk-energy()-X"              "tBodyAccJerk-energy()-Y"             
 [99] "tBodyAccJerk-energy()-Z"              "tBodyAccJerk-iqr()-X"                
[101] "tBodyAccJerk-iqr()-Y"                 "tBodyAccJerk-iqr()-Z"                
[103] "tBodyAccJerk-entropy()-X"             "tBodyAccJerk-entropy()-Y"            
[105] "tBodyAccJerk-entropy()-Z"             "tBodyAccJerk-arCoeff()-X,1"          
[107] "tBodyAccJerk-arCoeff()-X,2"           "tBodyAccJerk-arCoeff()-X,3"          
[109] "tBodyAccJerk-arCoeff()-X,4"           "tBodyAccJerk-arCoeff()-Y,1"          
[111] "tBodyAccJerk-arCoeff()-Y,2"           "tBodyAccJerk-arCoeff()-Y,3"          
[113] "tBodyAccJerk-arCoeff()-Y,4"           "tBodyAccJerk-arCoeff()-Z,1"          
[115] "tBodyAccJerk-arCoeff()-Z,2"           "tBodyAccJerk-arCoeff()-Z,3"          
[117] "tBodyAccJerk-arCoeff()-Z,4"           "tBodyAccJerk-correlation()-X,Y"      
[119] "tBodyAccJerk-correlation()-X,Z"       "tBodyAccJerk-correlation()-Y,Z" 


Column 121-160 related to 

"tBodyGyro-"

[121] "tBodyGyro-mean()-X"                   "tBodyGyro-mean()-Y"                  
[123] "tBodyGyro-mean()-Z"                   "tBodyGyro-std()-X"                   
[125] "tBodyGyro-std()-Y"                    "tBodyGyro-std()-Z"                   
[127] "tBodyGyro-mad()-X"                    "tBodyGyro-mad()-Y"                   
[129] "tBodyGyro-mad()-Z"                    "tBodyGyro-max()-X"                   
[131] "tBodyGyro-max()-Y"                    "tBodyGyro-max()-Z"                   
[133] "tBodyGyro-min()-X"                    "tBodyGyro-min()-Y"                   
[135] "tBodyGyro-min()-Z"                    "tBodyGyro-sma()"                     
[137] "tBodyGyro-energy()-X"                 "tBodyGyro-energy()-Y"                
[139] "tBodyGyro-energy()-Z"                 "tBodyGyro-iqr()-X"                   
[141] "tBodyGyro-iqr()-Y"                    "tBodyGyro-iqr()-Z"                   
[143] "tBodyGyro-entropy()-X"                "tBodyGyro-entropy()-Y"               
[145] "tBodyGyro-entropy()-Z"                "tBodyGyro-arCoeff()-X,1"             
[147] "tBodyGyro-arCoeff()-X,2"              "tBodyGyro-arCoeff()-X,3"             
[149] "tBodyGyro-arCoeff()-X,4"              "tBodyGyro-arCoeff()-Y,1"             
[151] "tBodyGyro-arCoeff()-Y,2"              "tBodyGyro-arCoeff()-Y,3"             
[153] "tBodyGyro-arCoeff()-Y,4"              "tBodyGyro-arCoeff()-Z,1"             
[155] "tBodyGyro-arCoeff()-Z,2"              "tBodyGyro-arCoeff()-Z,3"             
[157] "tBodyGyro-arCoeff()-Z,4"              "tBodyGyro-correlation()-X,Y"         
[159] "tBodyGyro-correlation()-X,Z"          "tBodyGyro-correlation()-Y,Z"         


Column 161-200 related to 

"tBodyGyroJerk-"

[161] "tBodyGyroJerk-mean()-X"               "tBodyGyroJerk-mean()-Y"              
[163] "tBodyGyroJerk-mean()-Z"               "tBodyGyroJerk-std()-X"               
[165] "tBodyGyroJerk-std()-Y"                "tBodyGyroJerk-std()-Z"               
[167] "tBodyGyroJerk-mad()-X"                "tBodyGyroJerk-mad()-Y"               
[169] "tBodyGyroJerk-mad()-Z"                "tBodyGyroJerk-max()-X"               
[171] "tBodyGyroJerk-max()-Y"                "tBodyGyroJerk-max()-Z"               
[173] "tBodyGyroJerk-min()-X"                "tBodyGyroJerk-min()-Y"               
[175] "tBodyGyroJerk-min()-Z"                "tBodyGyroJerk-sma()"                 
[177] "tBodyGyroJerk-energy()-X"             "tBodyGyroJerk-energy()-Y"            
[179] "tBodyGyroJerk-energy()-Z"             "tBodyGyroJerk-iqr()-X"               
[181] "tBodyGyroJerk-iqr()-Y"                "tBodyGyroJerk-iqr()-Z"               
[183] "tBodyGyroJerk-entropy()-X"            "tBodyGyroJerk-entropy()-Y"           
[185] "tBodyGyroJerk-entropy()-Z"            "tBodyGyroJerk-arCoeff()-X,1"         
[187] "tBodyGyroJerk-arCoeff()-X,2"          "tBodyGyroJerk-arCoeff()-X,3"         
[189] "tBodyGyroJerk-arCoeff()-X,4"          "tBodyGyroJerk-arCoeff()-Y,1"         
[191] "tBodyGyroJerk-arCoeff()-Y,2"          "tBodyGyroJerk-arCoeff()-Y,3"         
[193] "tBodyGyroJerk-arCoeff()-Y,4"          "tBodyGyroJerk-arCoeff()-Z,1"         
[195] "tBodyGyroJerk-arCoeff()-Z,2"          "tBodyGyroJerk-arCoeff()-Z,3"         
[197] "tBodyGyroJerk-arCoeff()-Z,4"          "tBodyGyroJerk-correlation()-X,Y"     
[199] "tBodyGyroJerk-correlation()-X,Z"      "tBodyGyroJerk-correlation()-Y,Z"   


Column 201-213 related to 

"tBodyAccMag-"

[201] "tBodyAccMag-mean()"                   "tBodyAccMag-std()"                   
[203] "tBodyAccMag-mad()"                    "tBodyAccMag-max()"                   
[205] "tBodyAccMag-min()"                    "tBodyAccMag-sma()"                   
[207] "tBodyAccMag-energy()"                 "tBodyAccMag-iqr()"                   
[209] "tBodyAccMag-entropy()"                "tBodyAccMag-arCoeff()1"              
[211] "tBodyAccMag-arCoeff()2"               "tBodyAccMag-arCoeff()3"              
[213] "tBodyAccMag-arCoeff()4"                 

Column 214-226 related to

 "tGravityAccMag-"
[214] "tGravityAccMag-mean()"          
[215] "tGravityAccMag-std()"                 "tGravityAccMag-mad()"                
[217] "tGravityAccMag-max()"                 "tGravityAccMag-min()"                
[219] "tGravityAccMag-sma()"                 "tGravityAccMag-energy()"             
[221] "tGravityAccMag-iqr()"                 "tGravityAccMag-entropy()"         
[223] "tGravityAccMag-arCoeff()1"            "tGravityAccMag-arCoeff()2"           
[225] "tGravityAccMag-arCoeff()3"            "tGravityAccMag-arCoeff()4" 

Column 227-239 related to

 "tBodyAccJerkMag-"
       
[227] "tBodyAccJerkMag-mean()"               "tBodyAccJerkMag-std()"               
[229] "tBodyAccJerkMag-mad()"                "tBodyAccJerkMag-max()"               
[231] "tBodyAccJerkMag-min()"                "tBodyAccJerkMag-sma()"               
[233] "tBodyAccJerkMag-energy()"             "tBodyAccJerkMag-iqr()"               
[235] "tBodyAccJerkMag-entropy()"            "tBodyAccJerkMag-arCoeff()1"          
[237] "tBodyAccJerkMag-arCoeff()2"           "tBodyAccJerkMag-arCoeff()3"          
[239] "tBodyAccJerkMag-arCoeff()4"     

     
Column 240-252 related to 

tBodyGyroMag

[240]"tBodyGyroMag-mean()"                
[241] "tBodyGyroMag-std()"                   "tBodyGyroMag-mad()"                  
[243] "tBodyGyroMag-max()"                   "tBodyGyroMag-min()"                  
[245] "tBodyGyroMag-sma()"                   "tBodyGyroMag-energy()"               
[247] "tBodyGyroMag-iqr()"                   "tBodyGyroMag-entropy()"              
[249] "tBodyGyroMag-arCoeff()1"              "tBodyGyroMag-arCoeff()2"             
[251] "tBodyGyroMag-arCoeff()3"              "tBodyGyroMag-arCoeff()4"     


Column 253-265 related to 

tBodyGyroJerkMag

[253] "tBodyGyroJerkMag-mean()"              "tBodyGyroJerkMag-std()"              
[255] "tBodyGyroJerkMag-mad()"               "tBodyGyroJerkMag-max()"              
[257] "tBodyGyroJerkMag-min()"               "tBodyGyroJerkMag-sma()"              
[259] "tBodyGyroJerkMag-energy()"            "tBodyGyroJerkMag-iqr()"              
[261] "tBodyGyroJerkMag-entropy()"           "tBodyGyroJerkMag-arCoeff()1"         
[263] "tBodyGyroJerkMag-arCoeff()2"          "tBodyGyroJerkMag-arCoeff()3"         
[265] "tBodyGyroJerkMag-arCoeff()4"      


Column 267-344 related to 

fBodyAcc

[266] "fBodyAcc-mean()-X"
[267] "fBodyAcc-mean()-Y"                    "fBodyAcc-mean()-Z"                   
[269] "fBodyAcc-std()-X"                     "fBodyAcc-std()-Y"                    
[271] "fBodyAcc-std()-Z"                     "fBodyAcc-mad()-X"                    
[273] "fBodyAcc-mad()-Y"                     "fBodyAcc-mad()-Z"                    
[275] "fBodyAcc-max()-X"                     "fBodyAcc-max()-Y"                    
[277] "fBodyAcc-max()-Z"                     "fBodyAcc-min()-X"                    
[279] "fBodyAcc-min()-Y"                     "fBodyAcc-min()-Z"                    
[281] "fBodyAcc-sma()"                       "fBodyAcc-energy()-X"                 
[283] "fBodyAcc-energy()-Y"                  "fBodyAcc-energy()-Z"                 
[285] "fBodyAcc-iqr()-X"                     "fBodyAcc-iqr()-Y"                    
[287] "fBodyAcc-iqr()-Z"                     "fBodyAcc-entropy()-X"                
[289] "fBodyAcc-entropy()-Y"                 "fBodyAcc-entropy()-Z"                
[291] "fBodyAcc-maxInds-X"                   "fBodyAcc-maxInds-Y"                  
[293] "fBodyAcc-maxInds-Z"                   "fBodyAcc-meanFreq()-X"               
[295] "fBodyAcc-meanFreq()-Y"                "fBodyAcc-meanFreq()-Z"               
[297] "fBodyAcc-skewness()-X"                "fBodyAcc-kurtosis()-X"               
[299] "fBodyAcc-skewness()-Y"                "fBodyAcc-kurtosis()-Y"               
[301] "fBodyAcc-skewness()-Z"                "fBodyAcc-kurtosis()-Z"               
[303] "fBodyAcc-bandsEnergy()-1,8"           "fBodyAcc-bandsEnergy()-9,16"         
[305] "fBodyAcc-bandsEnergy()-17,24"         "fBodyAcc-bandsEnergy()-25,32"        
[307] "fBodyAcc-bandsEnergy()-33,40"         "fBodyAcc-bandsEnergy()-41,48"        
[309] "fBodyAcc-bandsEnergy()-49,56"         "fBodyAcc-bandsEnergy()-57,64"        
[311] "fBodyAcc-bandsEnergy()-1,16"          "fBodyAcc-bandsEnergy()-17,32"        
[313] "fBodyAcc-bandsEnergy()-33,48"         "fBodyAcc-bandsEnergy()-49,64"        
[315] "fBodyAcc-bandsEnergy()-1,24"          "fBodyAcc-bandsEnergy()-25,48"        
[317] "fBodyAcc-bandsEnergy()-1,8"           "fBodyAcc-bandsEnergy()-9,16"         
[319] "fBodyAcc-bandsEnergy()-17,24"         "fBodyAcc-bandsEnergy()-25,32"        
[321] "fBodyAcc-bandsEnergy()-33,40"         "fBodyAcc-bandsEnergy()-41,48"        
[323] "fBodyAcc-bandsEnergy()-49,56"         "fBodyAcc-bandsEnergy()-57,64"        
[325] "fBodyAcc-bandsEnergy()-1,16"          "fBodyAcc-bandsEnergy()-17,32"        
[327] "fBodyAcc-bandsEnergy()-33,48"         "fBodyAcc-bandsEnergy()-49,64"        
[329] "fBodyAcc-bandsEnergy()-1,24"          "fBodyAcc-bandsEnergy()-25,48"        
[331] "fBodyAcc-bandsEnergy()-1,8"           "fBodyAcc-bandsEnergy()-9,16"         
[333] "fBodyAcc-bandsEnergy()-17,24"         "fBodyAcc-bandsEnergy()-25,32"        
[335] "fBodyAcc-bandsEnergy()-33,40"         "fBodyAcc-bandsEnergy()-41,48"        
[337] "fBodyAcc-bandsEnergy()-49,56"         "fBodyAcc-bandsEnergy()-57,64"        
[339] "fBodyAcc-bandsEnergy()-1,16"          "fBodyAcc-bandsEnergy()-17,32"        
[341] "fBodyAcc-bandsEnergy()-33,48"         "fBodyAcc-bandsEnergy()-49,64"        
[343] "fBodyAcc-bandsEnergy()-1,24"          "fBodyAcc-bandsEnergy()-25,48"   


Column 345-423 related to 

fBodyAccJerk-

[345] "fBodyAccJerk-mean()-X"                "fBodyAccJerk-mean()-Y"               
[347] "fBodyAccJerk-mean()-Z"                "fBodyAccJerk-std()-X"                
[349] "fBodyAccJerk-std()-Y"                 "fBodyAccJerk-std()-Z"                
[351] "fBodyAccJerk-mad()-X"                 "fBodyAccJerk-mad()-Y"                
[353] "fBodyAccJerk-mad()-Z"                 "fBodyAccJerk-max()-X"                
[355] "fBodyAccJerk-max()-Y"                 "fBodyAccJerk-max()-Z"                
[357] "fBodyAccJerk-min()-X"                 "fBodyAccJerk-min()-Y"                
[359] "fBodyAccJerk-min()-Z"                 "fBodyAccJerk-sma()"                  
[361] "fBodyAccJerk-energy()-X"              "fBodyAccJerk-energy()-Y"             
[363] "fBodyAccJerk-energy()-Z"              "fBodyAccJerk-iqr()-X"                
[365] "fBodyAccJerk-iqr()-Y"                 "fBodyAccJerk-iqr()-Z"                
[367] "fBodyAccJerk-entropy()-X"             "fBodyAccJerk-entropy()-Y"            
[369] "fBodyAccJerk-entropy()-Z"             "fBodyAccJerk-maxInds-X"              
[371] "fBodyAccJerk-maxInds-Y"               "fBodyAccJerk-maxInds-Z"              
[373] "fBodyAccJerk-meanFreq()-X"            "fBodyAccJerk-meanFreq()-Y"           
[375] "fBodyAccJerk-meanFreq()-Z"            "fBodyAccJerk-skewness()-X"           
[377] "fBodyAccJerk-kurtosis()-X"            "fBodyAccJerk-skewness()-Y"           
[379] "fBodyAccJerk-kurtosis()-Y"            "fBodyAccJerk-skewness()-Z"           
[381] "fBodyAccJerk-kurtosis()-Z"            "fBodyAccJerk-bandsEnergy()-1,8"      
[383] "fBodyAccJerk-bandsEnergy()-9,16"      "fBodyAccJerk-bandsEnergy()-17,24"    
[385] "fBodyAccJerk-bandsEnergy()-25,32"     "fBodyAccJerk-bandsEnergy()-33,40"    
[387] "fBodyAccJerk-bandsEnergy()-41,48"     "fBodyAccJerk-bandsEnergy()-49,56"    
[389] "fBodyAccJerk-bandsEnergy()-57,64"     "fBodyAccJerk-bandsEnergy()-1,16"     
[391] "fBodyAccJerk-bandsEnergy()-17,32"     "fBodyAccJerk-bandsEnergy()-33,48"    
[393] "fBodyAccJerk-bandsEnergy()-49,64"     "fBodyAccJerk-bandsEnergy()-1,24"     
[395] "fBodyAccJerk-bandsEnergy()-25,48"     "fBodyAccJerk-bandsEnergy()-1,8"      
[397] "fBodyAccJerk-bandsEnergy()-9,16"      "fBodyAccJerk-bandsEnergy()-17,24"    
[399] "fBodyAccJerk-bandsEnergy()-25,32"     "fBodyAccJerk-bandsEnergy()-33,40"    
[401] "fBodyAccJerk-bandsEnergy()-41,48"     "fBodyAccJerk-bandsEnergy()-49,56"    
[403] "fBodyAccJerk-bandsEnergy()-57,64"     "fBodyAccJerk-bandsEnergy()-1,16"     
[405] "fBodyAccJerk-bandsEnergy()-17,32"     "fBodyAccJerk-bandsEnergy()-33,48"    
[407] "fBodyAccJerk-bandsEnergy()-49,64"     "fBodyAccJerk-bandsEnergy()-1,24"     
[409] "fBodyAccJerk-bandsEnergy()-25,48"     "fBodyAccJerk-bandsEnergy()-1,8"      
[411] "fBodyAccJerk-bandsEnergy()-9,16"      "fBodyAccJerk-bandsEnergy()-17,24"    
[413] "fBodyAccJerk-bandsEnergy()-25,32"     "fBodyAccJerk-bandsEnergy()-33,40"    
[415] "fBodyAccJerk-bandsEnergy()-41,48"     "fBodyAccJerk-bandsEnergy()-49,56"    
[417] "fBodyAccJerk-bandsEnergy()-57,64"     "fBodyAccJerk-bandsEnergy()-1,16"     
[419] "fBodyAccJerk-bandsEnergy()-17,32"     "fBodyAccJerk-bandsEnergy()-33,48"    
[421] "fBodyAccJerk-bandsEnergy()-49,64"     "fBodyAccJerk-bandsEnergy()-1,24"     
[423] "fBodyAccJerk-bandsEnergy()-25,48"   


Column 424 -502 related to 

fBodyGyro

[424] "fBodyGyro-mean()-X"  
[425] "fBodyGyro-mean()-Y"                   "fBodyGyro-mean()-Z"                  
[427] "fBodyGyro-std()-X"                    "fBodyGyro-std()-Y"                   
[429] "fBodyGyro-std()-Z"                    "fBodyGyro-mad()-X"                   
[431] "fBodyGyro-mad()-Y"                    "fBodyGyro-mad()-Z"                   
[433] "fBodyGyro-max()-X"                    "fBodyGyro-max()-Y"                   
[435] "fBodyGyro-max()-Z"                    "fBodyGyro-min()-X"                   
[437] "fBodyGyro-min()-Y"                    "fBodyGyro-min()-Z"                   
[439] "fBodyGyro-sma()"                      "fBodyGyro-energy()-X"                
[441] "fBodyGyro-energy()-Y"                 "fBodyGyro-energy()-Z"                
[443] "fBodyGyro-iqr()-X"                    "fBodyGyro-iqr()-Y"                   
[445] "fBodyGyro-iqr()-Z"                    "fBodyGyro-entropy()-X"               
[447] "fBodyGyro-entropy()-Y"                "fBodyGyro-entropy()-Z"               
[449] "fBodyGyro-maxInds-X"                  "fBodyGyro-maxInds-Y"                 
[451] "fBodyGyro-maxInds-Z"                  "fBodyGyro-meanFreq()-X"              
[453] "fBodyGyro-meanFreq()-Y"               "fBodyGyro-meanFreq()-Z"              
[455] "fBodyGyro-skewness()-X"               "fBodyGyro-kurtosis()-X"              
[457] "fBodyGyro-skewness()-Y"               "fBodyGyro-kurtosis()-Y"              
[459] "fBodyGyro-skewness()-Z"               "fBodyGyro-kurtosis()-Z"              
[461] "fBodyGyro-bandsEnergy()-1,8"          "fBodyGyro-bandsEnergy()-9,16"        
[463] "fBodyGyro-bandsEnergy()-17,24"        "fBodyGyro-bandsEnergy()-25,32"       
[465] "fBodyGyro-bandsEnergy()-33,40"        "fBodyGyro-bandsEnergy()-41,48"       
[467] "fBodyGyro-bandsEnergy()-49,56"        "fBodyGyro-bandsEnergy()-57,64"       
[469] "fBodyGyro-bandsEnergy()-1,16"         "fBodyGyro-bandsEnergy()-17,32"       
[471] "fBodyGyro-bandsEnergy()-33,48"        "fBodyGyro-bandsEnergy()-49,64"       
[473] "fBodyGyro-bandsEnergy()-1,24"         "fBodyGyro-bandsEnergy()-25,48"       
[475] "fBodyGyro-bandsEnergy()-1,8"          "fBodyGyro-bandsEnergy()-9,16"        
[477] "fBodyGyro-bandsEnergy()-17,24"        "fBodyGyro-bandsEnergy()-25,32"       
[479] "fBodyGyro-bandsEnergy()-33,40"        "fBodyGyro-bandsEnergy()-41,48"       
[481] "fBodyGyro-bandsEnergy()-49,56"        "fBodyGyro-bandsEnergy()-57,64"       
[483] "fBodyGyro-bandsEnergy()-1,16"         "fBodyGyro-bandsEnergy()-17,32"       
[485] "fBodyGyro-bandsEnergy()-33,48"        "fBodyGyro-bandsEnergy()-49,64"       
[487] "fBodyGyro-bandsEnergy()-1,24"         "fBodyGyro-bandsEnergy()-25,48"       
[489] "fBodyGyro-bandsEnergy()-1,8"          "fBodyGyro-bandsEnergy()-9,16"        
[491] "fBodyGyro-bandsEnergy()-17,24"        "fBodyGyro-bandsEnergy()-25,32"       
[493] "fBodyGyro-bandsEnergy()-33,40"        "fBodyGyro-bandsEnergy()-41,48"       
[495] "fBodyGyro-bandsEnergy()-49,56"        "fBodyGyro-bandsEnergy()-57,64"       
[497] "fBodyGyro-bandsEnergy()-1,16"         "fBodyGyro-bandsEnergy()-17,32"       
[499] "fBodyGyro-bandsEnergy()-33,48"        "fBodyGyro-bandsEnergy()-49,64"       
[501] "fBodyGyro-bandsEnergy()-1,24"         "fBodyGyro-bandsEnergy()-25,48"   


Column 503-515 related to 

fBodyAccMag

[503] "fBodyAccMag-mean()"                   "fBodyAccMag-std()"                   
[505] "fBodyAccMag-mad()"                    "fBodyAccMag-max()"                   
[507] "fBodyAccMag-min()"                    "fBodyAccMag-sma()"                   
[509] "fBodyAccMag-energy()"                 "fBodyAccMag-iqr()"                   
[511] "fBodyAccMag-entropy()"                "fBodyAccMag-maxInds"                 
[513] "fBodyAccMag-meanFreq()"               "fBodyAccMag-skewness()"              
[515] "fBodyAccMag-kurtosis()"


Column 516-528 related to 

fBodyAccJerkMag ( I think there are typos here, fBodyBody-->fBody )

[516]fBodyBodyAccJerkMag-mean()"          
[517] "fBodyBodyAccJerkMag-std()"            "fBodyBodyAccJerkMag-mad()"           
[519] "fBodyBodyAccJerkMag-max()"            "fBodyBodyAccJerkMag-min()"           
[521] "fBodyBodyAccJerkMag-sma()"            "fBodyBodyAccJerkMag-energy()"        
[523] "fBodyBodyAccJerkMag-iqr()"            "fBodyBodyAccJerkMag-entropy()"       
[525] "fBodyBodyAccJerkMag-maxInds"          "fBodyBodyAccJerkMag-meanFreq()"      
[527] "fBodyBodyAccJerkMag-skewness()"       "fBodyBodyAccJerkMag-kurtosis()"


Column 529-541 related to 

fBodyGyroMag

[529] "fBodyBodyGyroMag-mean()"              "fBodyBodyGyroMag-std()"              
[531] "fBodyBodyGyroMag-mad()"               "fBodyBodyGyroMag-max()"              
[533] "fBodyBodyGyroMag-min()"               "fBodyBodyGyroMag-sma()"              
[535] "fBodyBodyGyroMag-energy()"            "fBodyBodyGyroMag-iqr()"              
[537] "fBodyBodyGyroMag-entropy()"           "fBodyBodyGyroMag-maxInds"            
[539] "fBodyBodyGyroMag-meanFreq()"          "fBodyBodyGyroMag-skewness()"         
[541] "fBodyBodyGyroMag-kurtosis()"     


Column  542-554 related to 

fBodyGyroJerkMag

[542]"fBodyBodyGyroJerkMag-mean()"         
[543] "fBodyBodyGyroJerkMag-std()"           "fBodyBodyGyroJerkMag-mad()"          
[545] "fBodyBodyGyroJerkMag-max()"           "fBodyBodyGyroJerkMag-min()"          
[547] "fBodyBodyGyroJerkMag-sma()"           "fBodyBodyGyroJerkMag-energy()"       
[549] "fBodyBodyGyroJerkMag-iqr()"           "fBodyBodyGyroJerkMag-entropy()"      
[551] "fBodyBodyGyroJerkMag-maxInds"         "fBodyBodyGyroJerkMag-meanFreq()"     
[553] "fBodyBodyGyroJerkMag-skewness()"      "fBodyBodyGyroJerkMag-kurtosis()" 


Column 555-561 related to 

angle()

which are the additional vectors obtained by averaging the signals in a signal window sample. 
These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

[555] "angle(tBodyAccMean,gravity)"          "angle(tBodyAccJerkMean),gravityMean)"
[557] "angle(tBodyGyroMean,gravityMean)"     "angle(tBodyGyroJerkMean,gravityMean)"
[559] "angle(X,gravityMean)"                 "angle(Y,gravityMean)"                
[561] "angle(Z,gravityMean)

(Note, I think there is a typo in [555], gravity-->gravityMean)                                                                                                          
                                                                                                                                                                       2. Additional columns are added to the train set and test set, in 
	"sxytraindata"  and "sxytestdata"

	Three column names are added infront of 561 columns of "xtraindat" and "xtestdat"

	"activityid" - activity id (from the activity_labels.txt)             
 	"activityname" - activity name (from the description of the activity_labels.txt, e.g. WALKING)
	"volunteerid" - subject identifier (from the subject_train.txt and subject_test.txt), the person who performs the experiments
                                                                                                                                                                                                                                                                                                                                                                                                                     