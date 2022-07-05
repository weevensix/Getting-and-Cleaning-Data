---
title: "CodeBook"
author: "Andrew O'Brien"
date: "30 June 2022"
output: html_document
keep_md: yes
---

## Project Description
The purpose of this project is to prepare a tidy data set from the human activity recognition database built by UCI from the recordings of 30 subjects performing activities of daily living while carrying a waist-mounted smartphone with embedded inertial sensors that can be used for later analysis.

##Study design and data processing
The experiments were carried out by UCI with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, they captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were then pre-processed by UCI by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, they obtained a vector of features by calculating variables from the time and frequency domain.

###Collection of the raw data
The data was collected by UCI from the accelerometers from the Samsung Galaxy S smartphone for 30 subjects performing activities of daily living while carrying a waist-mounted smartphone with embedded inertial sensors.

###Notes on the original (raw) data 
For each record in the dataset it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment.

A full description of the raw data is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

##Creating the tidydata file
The tidy data set is the average of each variable across each activity and subject pair using only the measurements on the mean, standard deviation and mean frequency for each measurement. 

###Guide to create the tidydata file
To create the tidydata txt file just run the script run_analysis.R in your working directory. 
The script uses base R and the dplyr package. The latter should be installed before running the script.

###Cleaning of the data
The script run_analysis.R. downloads a zip file from the UCI Machine Learning Repository website and reads the train and test sets, features and labels into R. It renames all columns with more descriptive headers and merges the training and the test sets to create one data set before extracting only the measurements on the mean and standard deviation for each measurement. The tidy data set is the average of each measurement extracted for each activity and each subject.  Descriptive variable and activity names are used for all activities in the data set.
[link to the readme document that describes the code in greater detail](README.md)

##Description of the variables in the tidydata.txt file
General description of the file:
 - The dataset comprises 180 rows and 88 columns
 - The individual rows show the average of each variable extracted for each activity-subject pair
 - The following variables are present in the dataset:
	timeBodyAcc.mean.X
	timeBodyAcc.mean.Y
	timeBodyAcc.mean.Z
	timeBodyAcc.std.X
	timeBodyAcc.std.Y
	timeBodyAcc.std.Z
	timeGravityAcc.mean.X
	timeGravityAcc.mean.Y
	timeGravityAcc.mean.Z
	timeGravityAcc.std.X
	timeGravityAcc.std.Y
	timeGravityAcc.std.Z
	timeBodyAccJerk.mean.X
	timeBodyAccJerk.mean.Y
	timeBodyAccJerk.mean.Z
	timeBodyAccJerk.std.X
	timeBodyAccJerk.std.Y
	timeBodyAccJerk.std.Z
	timeBodyGyro.mean.X
	timeBodyGyro.mean.Y
	timeBodyGyro.mean.Z
	timeBodyGyro.std.X
	timeBodyGyro.std.Y
	timeBodyGyro.std.Z
	timeBodyGyroJerk.mean.X
	timeBodyGyroJerk.mean.Y
	timeBodyGyroJerk.mean.Z
	timeBodyGyroJerk.std.X
	timeBodyGyroJerk.std.Y
	timeBodyGyroJerk.std.Z
	timeBodyAccMag.mean
	timeBodyAccMag.std
	timeGravityAccMag.mean
	timeGravityAccMag.std
	timeBodyAccJerkMag.mean
	timeBodyAccJerkMag.std
	timeBodyGyroMag.mean
	timeBodyGyroMag.std
	timeBodyGyroJerkMag.mean
	timeBodyGyroJerkMag.std
	freqBodyAcc.mean.X
	freqBodyAcc.mean.Y
	freqBodyAcc.mean.Z
	freqBodyAcc.std.X
	freqBodyAcc.std.Y
	freqBodyAcc.std.Z
	freqBodyAcc.meanFreq.X
	freqBodyAcc.meanFreq.Y
	freqBodyAcc.meanFreq.Z
	freqBodyAccJerk.mean.X
	freqBodyAccJerk.mean.Y
	freqBodyAccJerk.mean.Z
	freqBodyAccJerk.std.X
	freqBodyAccJerk.std.Y
	freqBodyAccJerk.std.Z
	freqBodyAccJerk.meanFreq.X
	freqBodyAccJerk.meanFreq.Y
	freqBodyAccJerk.meanFreq.Z
	freqBodyGyro.mean.X
	freqBodyGyro.mean.Y
	freqBodyGyro.mean.Z
	freqBodyGyro.std.X
	freqBodyGyro.std.Y
	freqBodyGyro.std.Z
	freqBodyGyro.meanFreq.X
	freqBodyGyro.meanFreq.Y
	freqBodyGyro.meanFreq.Z
	freqBodyAccMag.mean
	freqBodyAccMag.std
	freqBodyAccMag.meanFreq
	freqBodyAccJerkMag.mean
	freqBodyAccJerkMag.std
	freqBodyAccJerkMag.meanFreq
	freqBodyGyroMag.mean
	freqBodyGyroMag.std
	freqBodyGyroMag.meanFreq
	freqBodyGyroJerkMag.mean
	freqBodyGyroJerkMag.std
	freqBodyGyroJerkMag.meanFreq
	angle.timeBodyAccMean.gravity
	angle.timeBodyAccJerkMean.gravityMean
	angle.timeBodyGyroMean.gravityMean
	angle.timeBodyGyroJerkMean.gravityMean
	angle.X.gravityMean
	angle.Y.gravityMean
	angle.Z.gravityMean

 - summary of values of variables in the tidy data set:
 
  timeBodyAcc.mean.X timeBodyAcc.mean.Y  timeBodyAcc.mean.Z timeBodyAcc.std.X timeBodyAcc.std.Y  timeBodyAcc.std.Z timeGravityAcc.mean.X
 Min.   :0.2216     Min.   :-0.040514   Min.   :-0.15251   Min.   :-0.9961   Min.   :-0.99024   Min.   :-0.9877   Min.   :-0.6800      
 1st Qu.:0.2712     1st Qu.:-0.020022   1st Qu.:-0.11207   1st Qu.:-0.9799   1st Qu.:-0.94205   1st Qu.:-0.9498   1st Qu.: 0.8376      
 Median :0.2770     Median :-0.017262   Median :-0.10819   Median :-0.7526   Median :-0.50897   Median :-0.6518   Median : 0.9208      
 Mean   :0.2743     Mean   :-0.017876   Mean   :-0.10916   Mean   :-0.5577   Mean   :-0.46046   Mean   :-0.5756   Mean   : 0.6975      
 3rd Qu.:0.2800     3rd Qu.:-0.014936   3rd Qu.:-0.10443   3rd Qu.:-0.1984   3rd Qu.:-0.03077   3rd Qu.:-0.2306   3rd Qu.: 0.9425      
 Max.   :0.3015     Max.   :-0.001308   Max.   :-0.07538   Max.   : 0.6269   Max.   : 0.61694   Max.   : 0.6090   Max.   : 0.9745      
 timeGravityAcc.mean.Y timeGravityAcc.mean.Z timeGravityAcc.std.X timeGravityAcc.std.Y timeGravityAcc.std.Z timeBodyAccJerk.mean.X
 Min.   :-0.47989      Min.   :-0.49509      Min.   :-0.9968      Min.   :-0.9942      Min.   :-0.9910      Min.   :0.04269       
 1st Qu.:-0.23319      1st Qu.:-0.11726      1st Qu.:-0.9825      1st Qu.:-0.9711      1st Qu.:-0.9605      1st Qu.:0.07396       
 Median :-0.12782      Median : 0.02384      Median :-0.9695      Median :-0.9590      Median :-0.9450      Median :0.07640       
 Mean   :-0.01621      Mean   : 0.07413      Mean   :-0.9638      Mean   :-0.9524      Mean   :-0.9364      Mean   :0.07947       
 3rd Qu.: 0.08773      3rd Qu.: 0.14946      3rd Qu.:-0.9509      3rd Qu.:-0.9370      3rd Qu.:-0.9180      3rd Qu.:0.08330       
 Max.   : 0.95659      Max.   : 0.95787      Max.   :-0.8296      Max.   :-0.6436      Max.   :-0.6102      Max.   :0.13019       
 timeBodyAccJerk.mean.Y timeBodyAccJerk.mean.Z timeBodyAccJerk.std.X timeBodyAccJerk.std.Y timeBodyAccJerk.std.Z timeBodyGyro.mean.X
 Min.   :-0.0386872     Min.   :-0.067458      Min.   :-0.9946       Min.   :-0.9895       Min.   :-0.99329      Min.   :-0.20578   
 1st Qu.: 0.0004664     1st Qu.:-0.010601      1st Qu.:-0.9832       1st Qu.:-0.9724       1st Qu.:-0.98266      1st Qu.:-0.04712   
 Median : 0.0094698     Median :-0.003861      Median :-0.8104       Median :-0.7756       Median :-0.88366      Median :-0.02871   
 Mean   : 0.0075652     Mean   :-0.004953      Mean   :-0.5949       Mean   :-0.5654       Mean   :-0.73596      Mean   :-0.03244   
 3rd Qu.: 0.0134008     3rd Qu.: 0.001958      3rd Qu.:-0.2233       3rd Qu.:-0.1483       3rd Qu.:-0.51212      3rd Qu.:-0.01676   
 Max.   : 0.0568186     Max.   : 0.038053      Max.   : 0.5443       Max.   : 0.3553       Max.   : 0.03102      Max.   : 0.19270   
 timeBodyGyro.mean.Y timeBodyGyro.mean.Z timeBodyGyro.std.X timeBodyGyro.std.Y timeBodyGyro.std.Z timeBodyGyroJerk.mean.X
 Min.   :-0.20421    Min.   :-0.07245    Min.   :-0.9943    Min.   :-0.9942    Min.   :-0.9855    Min.   :-0.15721       
 1st Qu.:-0.08955    1st Qu.: 0.07475    1st Qu.:-0.9735    1st Qu.:-0.9629    1st Qu.:-0.9609    1st Qu.:-0.10322       
 Median :-0.07318    Median : 0.08512    Median :-0.7890    Median :-0.8017    Median :-0.8010    Median :-0.09868       
 Mean   :-0.07426    Mean   : 0.08744    Mean   :-0.6916    Mean   :-0.6533    Mean   :-0.6164    Mean   :-0.09606       
 3rd Qu.:-0.06113    3rd Qu.: 0.10177    3rd Qu.:-0.4414    3rd Qu.:-0.4196    3rd Qu.:-0.3106    3rd Qu.:-0.09110       
 Max.   : 0.02747    Max.   : 0.17910    Max.   : 0.2677    Max.   : 0.4765    Max.   : 0.5649    Max.   :-0.02209       
 timeBodyGyroJerk.mean.Y timeBodyGyroJerk.mean.Z timeBodyGyroJerk.std.X timeBodyGyroJerk.std.Y timeBodyGyroJerk.std.Z timeBodyAccMag.mean
 Min.   :-0.07681        Min.   :-0.092500       Min.   :-0.9965        Min.   :-0.9971        Min.   :-0.9954        Min.   :-0.9865    
 1st Qu.:-0.04552        1st Qu.:-0.061725       1st Qu.:-0.9800        1st Qu.:-0.9832        1st Qu.:-0.9848        1st Qu.:-0.9573    
 Median :-0.04112        Median :-0.053430       Median :-0.8396        Median :-0.8942        Median :-0.8610        Median :-0.4829    
 Mean   :-0.04269        Mean   :-0.054802       Mean   :-0.7036        Mean   :-0.7636        Mean   :-0.7096        Mean   :-0.4973    
 3rd Qu.:-0.03842        3rd Qu.:-0.048985       3rd Qu.:-0.4629        3rd Qu.:-0.5861        3rd Qu.:-0.4741        3rd Qu.:-0.0919    
 Max.   :-0.01320        Max.   :-0.006941       Max.   : 0.1791        Max.   : 0.2959        Max.   : 0.1932        Max.   : 0.6446    
 timeBodyAccMag.std timeGravityAccMag.mean timeGravityAccMag.std timeBodyAccJerkMag.mean timeBodyAccJerkMag.std timeBodyGyroMag.mean
 Min.   :-0.9865    Min.   :-0.9865        Min.   :-0.9865       Min.   :-0.9928         Min.   :-0.9946        Min.   :-0.9807     
 1st Qu.:-0.9430    1st Qu.:-0.9573        1st Qu.:-0.9430       1st Qu.:-0.9807         1st Qu.:-0.9765        1st Qu.:-0.9461     
 Median :-0.6074    Median :-0.4829        Median :-0.6074       Median :-0.8168         Median :-0.8014        Median :-0.6551     
 Mean   :-0.5439    Mean   :-0.4973        Mean   :-0.5439       Mean   :-0.6079         Mean   :-0.5842        Mean   :-0.5652     
 3rd Qu.:-0.2090    3rd Qu.:-0.0919        3rd Qu.:-0.2090       3rd Qu.:-0.2456         3rd Qu.:-0.2173        3rd Qu.:-0.2159     
 Max.   : 0.4284    Max.   : 0.6446        Max.   : 0.4284       Max.   : 0.4345         Max.   : 0.4506        Max.   : 0.4180     
 timeBodyGyroMag.std timeBodyGyroJerkMag.mean timeBodyGyroJerkMag.std freqBodyAcc.mean.X freqBodyAcc.mean.Y freqBodyAcc.mean.Z
 Min.   :-0.9814     Min.   :-0.99732         Min.   :-0.9977         Min.   :-0.9952    Min.   :-0.98903   Min.   :-0.9895   
 1st Qu.:-0.9476     1st Qu.:-0.98515         1st Qu.:-0.9805         1st Qu.:-0.9787    1st Qu.:-0.95361   1st Qu.:-0.9619   
 Median :-0.7420     Median :-0.86479         Median :-0.8809         Median :-0.7691    Median :-0.59498   Median :-0.7236   
 Mean   :-0.6304     Mean   :-0.73637         Mean   :-0.7550         Mean   :-0.5758    Mean   :-0.48873   Mean   :-0.6297   
 3rd Qu.:-0.3602     3rd Qu.:-0.51186         3rd Qu.:-0.5767         3rd Qu.:-0.2174    3rd Qu.:-0.06341   3rd Qu.:-0.3183   
 Max.   : 0.3000     Max.   : 0.08758         Max.   : 0.2502         Max.   : 0.5370    Max.   : 0.52419   Max.   : 0.2807   
 freqBodyAcc.std.X freqBodyAcc.std.Y  freqBodyAcc.std.Z freqBodyAcc.meanFreq.X freqBodyAcc.meanFreq.Y freqBodyAcc.meanFreq.Z
 Min.   :-0.9966   Min.   :-0.99068   Min.   :-0.9872   Min.   :-0.63591       Min.   :-0.379518      Min.   :-0.52011      
 1st Qu.:-0.9820   1st Qu.:-0.94042   1st Qu.:-0.9459   1st Qu.:-0.39165       1st Qu.:-0.081314      1st Qu.:-0.03629      
 Median :-0.7470   Median :-0.51338   Median :-0.6441   Median :-0.25731       Median : 0.007855      Median : 0.06582      
 Mean   :-0.5522   Mean   :-0.48148   Mean   :-0.5824   Mean   :-0.23227       Mean   : 0.011529      Mean   : 0.04372      
 3rd Qu.:-0.1966   3rd Qu.:-0.07913   3rd Qu.:-0.2655   3rd Qu.:-0.06105       3rd Qu.: 0.086281      3rd Qu.: 0.17542      
 Max.   : 0.6585   Max.   : 0.56019   Max.   : 0.6871   Max.   : 0.15912       Max.   : 0.466528      Max.   : 0.40253      
 freqBodyAccJerk.mean.X freqBodyAccJerk.mean.Y freqBodyAccJerk.mean.Z freqBodyAccJerk.std.X freqBodyAccJerk.std.Y freqBodyAccJerk.std.Z
 Min.   :-0.9946        Min.   :-0.9894        Min.   :-0.9920        Min.   :-0.9951       Min.   :-0.9905       Min.   :-0.993108    
 1st Qu.:-0.9828        1st Qu.:-0.9725        1st Qu.:-0.9796        1st Qu.:-0.9847       1st Qu.:-0.9737       1st Qu.:-0.983747    
 Median :-0.8126        Median :-0.7817        Median :-0.8707        Median :-0.8254       Median :-0.7852       Median :-0.895121    
 Mean   :-0.6139        Mean   :-0.5882        Mean   :-0.7144        Mean   :-0.6121       Mean   :-0.5707       Mean   :-0.756489    
 3rd Qu.:-0.2820        3rd Qu.:-0.1963        3rd Qu.:-0.4697        3rd Qu.:-0.2475       3rd Qu.:-0.1685       3rd Qu.:-0.543787    
 Max.   : 0.4743        Max.   : 0.2767        Max.   : 0.1578        Max.   : 0.4768       Max.   : 0.3498       Max.   :-0.006236    
 freqBodyAccJerk.meanFreq.X freqBodyAccJerk.meanFreq.Y freqBodyAccJerk.meanFreq.Z freqBodyGyro.mean.X freqBodyGyro.mean.Y freqBodyGyro.mean.Z
 Min.   :-0.57604           Min.   :-0.60197           Min.   :-0.62756           Min.   :-0.9931     Min.   :-0.9940     Min.   :-0.9860    
 1st Qu.:-0.28966           1st Qu.:-0.39751           1st Qu.:-0.30867           1st Qu.:-0.9697     1st Qu.:-0.9700     1st Qu.:-0.9624    
 Median :-0.06091           Median :-0.23209           Median :-0.09187           Median :-0.7300     Median :-0.8141     Median :-0.7909    
 Mean   :-0.06910           Mean   :-0.22810           Mean   :-0.13760           Mean   :-0.6367     Mean   :-0.6767     Mean   :-0.6044    
 3rd Qu.: 0.17660           3rd Qu.:-0.04721           3rd Qu.: 0.03858           3rd Qu.:-0.3387     3rd Qu.:-0.4458     3rd Qu.:-0.2635    
 Max.   : 0.33145           Max.   : 0.19568           Max.   : 0.23011           Max.   : 0.4750     Max.   : 0.3288     Max.   : 0.4924    
 freqBodyGyro.std.X freqBodyGyro.std.Y freqBodyGyro.std.Z freqBodyGyro.meanFreq.X freqBodyGyro.meanFreq.Y freqBodyGyro.meanFreq.Z
 Min.   :-0.9947    Min.   :-0.9944    Min.   :-0.9867    Min.   :-0.395770       Min.   :-0.66681        Min.   :-0.50749       
 1st Qu.:-0.9750    1st Qu.:-0.9602    1st Qu.:-0.9643    1st Qu.:-0.213363       1st Qu.:-0.29433        1st Qu.:-0.15481       
 Median :-0.8086    Median :-0.7964    Median :-0.8224    Median :-0.115527       Median :-0.15794        Median :-0.05081       
 Mean   :-0.7110    Mean   :-0.6454    Mean   :-0.6577    Mean   :-0.104551       Mean   :-0.16741        Mean   :-0.05718       
 3rd Qu.:-0.4813    3rd Qu.:-0.4154    3rd Qu.:-0.3916    3rd Qu.: 0.002655       3rd Qu.:-0.04269        3rd Qu.: 0.04152       
 Max.   : 0.1966    Max.   : 0.6462    Max.   : 0.5225    Max.   : 0.249209       Max.   : 0.27314        Max.   : 0.37707       
 freqBodyAccMag.mean freqBodyAccMag.std freqBodyAccMag.meanFreq freqBodyAccJerkMag.mean freqBodyAccJerkMag.std
 Min.   :-0.9868     Min.   :-0.9876    Min.   :-0.31234        Min.   :-0.9940             Min.   :-0.9944           
 1st Qu.:-0.9560     1st Qu.:-0.9452    1st Qu.:-0.01475        1st Qu.:-0.9770             1st Qu.:-0.9752           
 Median :-0.6703     Median :-0.6513    Median : 0.08132        Median :-0.7940             Median :-0.8126           
 Mean   :-0.5365     Mean   :-0.6210    Mean   : 0.07613        Mean   :-0.5756             Mean   :-0.5992           
 3rd Qu.:-0.1622     3rd Qu.:-0.3654    3rd Qu.: 0.17436        3rd Qu.:-0.1872             3rd Qu.:-0.2668           
 Max.   : 0.5866     Max.   : 0.1787    Max.   : 0.43585        Max.   : 0.5384             Max.   : 0.3163           
 freqBodyAccJerkMag.meanFreq freqBodyGyroMag.mean freqBodyGyroMag.std freqBodyGyroMag.meanFreq freqBodyGyroJerkMag.mean
 Min.   :-0.12521                Min.   :-0.9865          Min.   :-0.9815         Min.   :-0.45664             Min.   :-0.9976             
 1st Qu.: 0.04527                1st Qu.:-0.9616          1st Qu.:-0.9488         1st Qu.:-0.16951             1st Qu.:-0.9813             
 Median : 0.17198                Median :-0.7657          Median :-0.7727         Median :-0.05352             Median :-0.8779             
 Mean   : 0.16255                Mean   :-0.6671          Mean   :-0.6723         Mean   :-0.03603             Mean   :-0.7564             
 3rd Qu.: 0.27593                3rd Qu.:-0.4087          3rd Qu.:-0.4277         3rd Qu.: 0.08228             3rd Qu.:-0.5831             
 Max.   : 0.48809                Max.   : 0.2040          Max.   : 0.2367         Max.   : 0.40952             Max.   : 0.1466             
 freqBodyGyroJerkMag.std freqBodyGyroJerkMag.meanFreq angle.timeBodyAccMean.gravity angle.timeBodyAccJerkMean.gravityMean
 Min.   :-0.9976             Min.   :-0.18292                 Min.   :-0.163043             Min.   :-0.1205540                   
 1st Qu.:-0.9802             1st Qu.: 0.05423                 1st Qu.:-0.011012             1st Qu.:-0.0211694                   
 Median :-0.8941             Median : 0.11156                 Median : 0.007878             Median : 0.0031358                   
 Mean   :-0.7715             Mean   : 0.12592                 Mean   : 0.006556             Mean   : 0.0006439                   
 3rd Qu.:-0.6081             3rd Qu.: 0.20805                 3rd Qu.: 0.024393             3rd Qu.: 0.0220881                   
 Max.   : 0.2878             Max.   : 0.42630                 Max.   : 0.129154             Max.   : 0.2032600                   
 angle.timeBodyGyroMean.gravityMean angle.timeBodyGyroJerkMean.gravityMean angle.X.gravityMean angle.Y.gravityMean angle.Z.gravityMean
 Min.   :-0.38931                   Min.   :-0.22367                       Min.   :-0.9471     Min.   :-0.87457    Min.   :-0.873649  
 1st Qu.:-0.01977                   1st Qu.:-0.05613                       1st Qu.:-0.7907     1st Qu.: 0.02191    1st Qu.:-0.083912  
 Median : 0.02087                   Median :-0.01602                       Median :-0.7377     Median : 0.17136    Median : 0.005079  
 Mean   : 0.02193                   Mean   :-0.01137                       Mean   :-0.5243     Mean   : 0.07865    Mean   :-0.040436  
 3rd Qu.: 0.06460                   3rd Qu.: 0.03200                       3rd Qu.:-0.5823     3rd Qu.: 0.24343    3rd Qu.: 0.106190  
 Max.   : 0.44410                   Max.   : 0.18238                       Max.   : 0.7378     Max.   : 0.42476    Max.   : 0.390444  

###activity
Each person performed six activities wearing a smartphone (Samsung Galaxy S II) on the waist.
 - Class: character
 - Unique values/levels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
 - Unit of measurement: no units

###subject
The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years.
 - Class: integer
 - Unique values/levels: 1..30
 - Unit of measurement: no units

###timeBodyAcc.mean.X
Mean value of the body acceleration time domain signal from the smartphone accelerometer X axis obtained by subtracting the gravity from the total acceleration (filtered to remove noise), averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: 0.222 0.281 0.276 0.264 0.278 ...
 - Unit of measurement: standard gravity units 'g'

###timeBodyAcc.mean.Y
Mean value of the body acceleration time domain signal from the smartphone accelerometer Y axis obtained by subtracting the gravity from the total acceleration (filtered to remove noise), averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels:  -0.0405 -0.0182 -0.019 -0.015 -0.0183 ...
 - Unit of measurement: standard gravity units 'g'
 
###timeBodyAcc.mean.Z
Mean value of the body acceleration time domain signal from the smartphone accelerometer Z axis obtained by subtracting the gravity from the total acceleration (filtered to remove noise), averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.113 -0.107 -0.101 -0.111 -0.108 ...
 - Unit of measurement: standard gravity units 'g'

###timeBodyAcc.std.X
Standard deviation of the body acceleration time domain signal from the smartphone accelerometer X axis obtained by subtracting the gravity from the total acceleration (filtered to remove noise), averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.928 -0.974 -0.983 -0.954 -0.966 ...
 - Unit of measurement: standard gravity units 'g'

###timeBodyAcc.std.Y
Standard deviation of the body acceleration time domain signal from the smartphone accelerometer Y axis obtained by subtracting the gravity from the total acceleration (filtered to remove noise), averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.837 -0.98 -0.962 -0.942 -0.969 ...
 - Unit of measurement: standard gravity units 'g'
 
###timeBodyAcc.std.Z
Standard deviation of the body acceleration time domain signal from the smartphone accelerometer Z axis obtained by subtracting the gravity from the total acceleration (filtered to remove noise), averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.826 -0.984 -0.964 -0.963 -0.969 ...
 - Unit of measurement: standard gravity units 'g'

###timeGravityAcc.mean.X     
Mean value of the gravitational component of sensor acceleration time domain signal from the smartphone accelerometer X axis (filtered to remove noise), averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.249 -0.51 -0.242 -0.421 -0.483 ...
 - Unit of measurement: standard gravity units 'g'

###timeGravityAcc.mean.Y     
Mean value of the gravitational component of sensor acceleration time domain signal from the smartphone accelerometer Y axis (filtered to remove noise), averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: 0.706 0.753 0.837 0.915 0.955 ...
 - Unit of measurement: standard gravity units 'g'

###timeGravityAcc.mean.Z     
Mean value of the gravitational component of sensor acceleration time domain signal from the smartphone accelerometer Z axis (filtered to remove noise), averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: 0.446 0.647 0.489 0.342 0.264 ...
 - Unit of measurement: standard gravity units 'g'
 
###timeGravityAcc.std.X     
Standard deviation of the gravitational component of sensor acceleration time domain signal from the smartphone accelerometer X axis (filtered to remove noise), averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.897 -0.959 -0.983 -0.921 -0.946 ...
 - Unit of measurement: standard gravity units 'g'

###timeGravityAcc.std.Y     
Standard deviation of the gravitational component of sensor acceleration time domain signal from the smartphone accelerometer Y axis (filtered to remove noise), averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.908 -0.988 -0.981 -0.97 -0.986 ...
 - Unit of measurement: standard gravity units 'g'

###timeGravityAcc.std.Z     
Standard deviation of the gravitational component of sensor acceleration time domain signal from the smartphone accelerometer Z axis (filtered to remove noise), averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.852 -0.984 -0.965 -0.976 -0.977 ...
 - Unit of measurement: standard gravity units 'g'
 
###timeBodyAccJerk.mean.X
Mean value of body linear acceleration derived in time to obtain Jerk signal from the smartphone accelerometer X axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: 0.0811 0.0826 0.077 0.0934 0.0848 ...
 - Unit of measurement: standard gravity units 'g'

###timeBodyAccJerk.mean.Y
Mean value of body linear acceleration derived in time to obtain Jerk signal from the smartphone accelerometer Y axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: 0.00384 0.01225 0.0138 0.00693 0.00747 ...
 - Unit of measurement: standard gravity units 'g'
 
###timeBodyAccJerk.mean.Z
Mean value of body linear acceleration derived in time to obtain Jerk signal from the smartphone accelerometer Z axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels:  0.01083 -0.0018 -0.00436 -0.00641 -0.00304 ...
 - Unit of measurement: standard gravity units 'g'
 
###timeBodyAccJerk.std.X
Standard deviation of body linear acceleration derived in time to obtain Jerk signal from the smartphone accelerometer X axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.958 -0.986 -0.981 -0.978 -0.983 ...
 - Unit of measurement: standard gravity units 'g'

###timeBodyAccJerk.std.Y
Standard deviation of body linear acceleration derived in time to obtain Jerk signal from the smartphone accelerometer Y axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.924 -0.983 -0.969 -0.942 -0.965 ...
 - Unit of measurement: standard gravity units 'g'
 
###timeBodyAccJerk.std.Z
Standard deviation of body linear acceleration derived in time to obtain Jerk signal from the smartphone accelerometer Z axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.955 -0.988 -0.982 -0.979 -0.985 ... 
 - Unit of measurement: standard gravity units 'g'

###timeBodyGyro.mean.X
Mean value of angular velocity from the time domain signal from the smartphone gyroscope X axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.01655 -0.01848 -0.02082 -0.00923 -0.02189 ...
 - Unit of measurement: radians/second

###timeBodyGyro.mean.Y
Mean value of angular velocity from the time domain signal from the smartphone gyroscope Y axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels:  -0.0645 -0.1118 -0.0719 -0.093 -0.0799 ...
 - Unit of measurement: radians/second
 
###timeBodyGyro.mean.Z
Mean value of angular velocity from the time domain signal from the smartphone gyroscope Z axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: 0.149 0.145 0.138 0.17 0.16 ...
 - Unit of measurement: radians/second

###timeBodyGyro.std.X
Standard deviation of angular velocity from the time domain signal from the smartphone gyroscope X axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.874 -0.988 -0.975 -0.973 -0.979 ... 
 - Unit of measurement: radians/second

###timeBodyGyro.std.Y
Standard deviation of angular velocity from the time domain signal from the smartphone gyroscope Y axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.951 -0.982 -0.977 -0.961 -0.977 ...
 - Unit of measurement: radians/second
 
###timeBodyGyro.std.Z
Standard deviation of angular velocity from the time domain signal from the smartphone gyroscope Z axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.908 -0.96 -0.964 -0.962 -0.961 ...
 - Unit of measurement: radians/second

###timeBodyGyroJerk.mean.X
Mean value of angular velocity derived in time to obtain Jerk signal from the smartphone gyroscope X axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.107 -0.102 -0.1 -0.105 -0.102 ...
 - Unit of measurement: radians/second

###timeBodyGyroJerk.mean.Y
Mean value of angular velocity derived in time to obtain Jerk signal from the smartphone gyroscope Y axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.0415 -0.0359 -0.039 -0.0381 -0.0404 ...
 - Unit of measurement: radians/second
 
###timeBodyGyroJerk.mean.Z
Mean value of angular velocity derived in time to obtain Jerk signal from the smartphone gyroscope Z axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.0741 -0.0702 -0.0687 -0.0712 -0.0708 ...
 - Unit of measurement: radians/second

###timeBodyGyroJerk.std.X
Standard deviation of angular velocity derived in time to obtain Jerk signal from the smartphone gyroscope X axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.919 -0.993 -0.98 -0.975 -0.983 ...
 - Unit of measurement: radians/second

###timeBodyGyroJerk.std.Y
Standard deviation of angular velocity derived in time to obtain Jerk signal from the smartphone gyroscope Y axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.968 -0.99 -0.987 -0.987 -0.984 ...
 - Unit of measurement: radians/second
 
###timeBodyGyroJerk.std.Z
Standard deviation of angular velocity derived in time to obtain Jerk signal from the smartphone gyroscope Z axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.958 -0.988 -0.983 -0.984 -0.99 ...
 - Unit of measurement: radians/second

###timeBodyAccMag.mean 
Mean value of the magnitude of the three-dimensional body acceleration time domain signal from the smartphone accelerometer, calculated using the Euclidean norm, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.842 -0.977 -0.973 -0.955 -0.967 ...
 - Unit of measurement: standard gravity units 'g'

###timeBodyAccMag.std 
Standard deviation of the magnitude of the three-dimensional body acceleration time domain signal from the smartphone accelerometer, calculated using the Euclidean norm, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.795 -0.973 -0.964 -0.931 -0.959 ...
 - Unit of measurement: standard gravity units 'g'

###timeGravityAccMag.mean 
Mean value of the magnitude of the three-dimensional gravitational component of sensor acceleration time domain signal from the smartphone accelerometer, calculated using the Euclidean norm, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.842 -0.977 -0.973 -0.955 -0.967 ...
 - Unit of measurement: standard gravity units 'g'

###timeGravityAccMag.std 
Standard deviation of the magnitude of the three-dimensional gravitational component of sensor acceleration time domain signal from the smartphone accelerometer, calculated using the Euclidean norm, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.795 -0.973 -0.964 -0.931 -0.959 ...
 - Unit of measurement: standard gravity units 'g'

###timeBodyAccJerkMag.mean 
Mean value of the magnitude of the three-dimensional body linear acceleration derived in time to obtain Jerk signal from the smartphone accelerometer, calculated using the Euclidean norm, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.954 -0.988 -0.979 -0.97 -0.98 ...
 - Unit of measurement: standard gravity units 'g'

###timeBodyAccJerkMag.std
Standard deviation of the magnitude of the three-dimensional body linear acceleration derived in time to obtain Jerk signal from the smartphone accelerometer, calculated using the Euclidean norm, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.928 -0.986 -0.976 -0.961 -0.977 ...
 - Unit of measurement: standard gravity units 'g'

###timeBodyGyroMag.mean 
Mean value of the magnitude of the three-dimensional angular velocity from the time domain signal from the smartphone gyroscope, calculated using the Euclidean norm, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.875 -0.95 -0.952 -0.93 -0.947 ...
 - Unit of measurement: radians/second

###timeBodyGyroMag.std 
Standard deviation of the magnitude of the three-dimensional angular velocity from the time domain signal from the smartphone gyroscope, calculated using the Euclidean norm, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.819 -0.961 -0.954 -0.947 -0.958 ...
 - Unit of measurement: radians/second

###timeBodyGyroJerkMag.mean
Mean value of the magnitude of the three-dimensional angular velocity derived in time to obtain Jerk signal from the smartphone gyroscope, calculated using the Euclidean norm, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.963 -0.992 -0.987 -0.985 -0.986 ... 
 - Unit of measurement: radians/second

###timeBodyGyroJerkMag.std
Standard deviation of the magnitude of the three-dimensional angular velocity derived in time to obtain Jerk signal from the smartphone gyroscope, calculated using the Euclidean norm, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.936 -0.99 -0.983 -0.983 -0.984 ... 
 - Unit of measurement: radians/second

###freqBodyAcc.mean.X
Mean value of the body acceleration frequency domain signal (produced using a Fast Fourier Transform) from the smartphone accelerometer X axis, obtained by subtracting the gravity from the total acceleration (filtered to remove noise), averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.939 -0.977 -0.981 -0.959 -0.969 ... 
 - Unit of measurement: standard gravity units 'g'

###freqBodyAcc.mean.Y
Mean value of the body acceleration frequency domain signal (produced using a Fast Fourier Transform) from the smartphone accelerometer Y axis obtained by subtracting the gravity from the total acceleration (filtered to remove noise), averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels:  -0.867 -0.98 -0.961 -0.939 -0.965 ... 
 - Unit of measurement: standard gravity units 'g'
 
###freqBodyAcc.mean.Z
Mean value of the body acceleration frequency domain signal (produced using a Fast Fourier Transform) from the smartphone accelerometer Z axis obtained by subtracting the gravity from the total acceleration (filtered to remove noise), averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.883 -0.984 -0.968 -0.968 -0.977 ...
 - Unit of measurement: standard gravity units 'g'

###freqBodyAcc.std.X
Standard deviation of the body acceleration frequency domain signal (produced using a Fast Fourier Transform) from the smartphone accelerometer X axis obtained by subtracting the gravity from the total acceleration (filtered to remove noise), averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.924 -0.973 -0.984 -0.952 -0.965 ...
 - Unit of measurement: standard gravity units 'g'

###freqBodyAcc.std.Y
Standard deviation of the body acceleration frequency domain signal (produced using a Fast Fourier Transform) from the smartphone accelerometer Y axis obtained by subtracting the gravity from the total acceleration (filtered to remove noise), averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.834 -0.981 -0.964 -0.946 -0.973 ...
 - Unit of measurement: standard gravity units 'g'
 
###freqBodyAcc.std.Z
Standard deviation of the body acceleration frequency domain signal (produced using a Fast Fourier Transform) from the smartphone accelerometer Z axis obtained by subtracting the gravity from the total acceleration (filtered to remove noise), averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.813 -0.985 -0.963 -0.962 -0.966 ...
 - Unit of measurement: standard gravity units 'g'

###freqBodyAcc.meanFreq.X 
Weighted average of the frequency components to obtain a mean frequency of the body acceleration frequency domain signal (produced using a Fast Fourier Transform) from the smartphone accelerometer X axis, obtained by subtracting the gravity from the total acceleration (filtered to remove noise), averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.159 -0.146 -0.074 -0.274 -0.136 ...
 - Unit of measurement: standard gravity units 'g'

###freqBodyAcc.meanFreq.Y 
Weighted average of the frequency components to obtain a mean frequency of the body acceleration frequency domain signal (produced using a Fast Fourier Transform) from the smartphone accelerometer Y axis, obtained by subtracting the gravity from the total acceleration (filtered to remove noise), averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels:  0.0975 0.2573 0.2385 0.3662 0.4665 ...
 - Unit of measurement: standard gravity units 'g'
 
###freqBodyAcc.meanFreq.Z 
Weighted average of the frequency components to obtain a mean frequency of the body acceleration frequency domain signal (produced using a Fast Fourier Transform) from the smartphone accelerometer Z axis, obtained by subtracting the gravity from the total acceleration (filtered to remove noise), averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: 0.0894 0.4025 0.217 0.2013 0.1323 ...
 - Unit of measurement: standard gravity units 'g'

###freqBodyAccJerk.mean.X
Mean value of the body acceleration frequency domain Jerk signal (produced using a Fast Fourier Transform) from the smartphone accelerometer X axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.957 -0.986 -0.981 -0.979 -0.983 ...
 - Unit of measurement: standard gravity units 'g'

###freqBodyAccJerk.mean.Y
Mean value of the body acceleration frequency domain Jerk signal (produced using a Fast Fourier Transform) from the smartphone accelerometer Y axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.922 -0.983 -0.969 -0.944 -0.965 ...
 - Unit of measurement: standard gravity units 'g'
 
###freqBodyAccJerk.mean.Z
Mean value of the body acceleration frequency domain Jerk signal (produced using a Fast Fourier Transform) from the smartphone accelerometer Z axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.948 -0.986 -0.979 -0.975 -0.983 ...
 - Unit of measurement: standard gravity units 'g'
 
###freqBodyAccJerk.std.X
Standard deviation of the body acceleration frequency domain Jerk signal (produced using a Fast Fourier Transform) from the smartphone accelerometer X axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.964 -0.987 -0.983 -0.98 -0.986 ...
 - Unit of measurement: standard gravity units 'g'
 
###freqBodyAccJerk.std.Y
Standard deviation of the body acceleration frequency domain Jerk signal (produced using a Fast Fourier Transform) from the smartphone accelerometer Y axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.932 -0.985 -0.971 -0.944 -0.966 ...
 - Unit of measurement: standard gravity units 'g'
 
###freqBodyAccJerk.std.Z
Standard deviation of the body acceleration frequency domain Jerk signal (produced using a Fast Fourier Transform) from the smartphone accelerometer Z axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.961 -0.989 -0.984 -0.98 -0.986 ...
 - Unit of measurement: standard gravity units 'g'

###freqBodyAccJerk.meanFreq.X 
Weighted average of the frequency components to obtain a mean frequency of the body acceleration frequency domain Jerk signal (produced using a Fast Fourier Transform) from the smartphone accelerometer X axis, obtained by subtracting the gravity from the total acceleration (filtered to remove noise), averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: 0.132 0.16 0.176 0.182 0.24 ...
 - Unit of measurement: standard gravity units 'g'
 
###freqBodyAccJerk.meanFreq.Y 
Weighted average of the frequency components to obtain a mean frequency of the body acceleration frequency domain Jerk signal (produced using a Fast Fourier Transform) from the smartphone accelerometer Y axis, obtained by subtracting the gravity from the total acceleration (filtered to remove noise), averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: 0.0245 0.1212 -0.0132 0.0987 0.1957 ...
 - Unit of measurement: standard gravity units 'g'
 
###freqBodyAccJerk.meanFreq.Z 
Weighted average of the frequency components to obtain a mean frequency of the body acceleration frequency domain Jerk signal (produced using a Fast Fourier Transform) from the smartphone accelerometer Z axis, obtained by subtracting the gravity from the total acceleration (filtered to remove noise), averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: 0.0244 0.1906 0.0448 0.077 0.0917 ...
 - Unit of measurement: standard gravity units 'g'

###freqBodyGyro.mean.X
Mean value of angular velocity from the frequency domain signal (produced using a Fast Fourier Transform) from the smartphone gyroscope X axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels:  -0.85 -0.986 -0.97 -0.967 -0.976 ... 
 - Unit of measurement: radians/second

###freqBodyGyro.mean.Y
Mean value of angular velocity from the frequency domain signal (produced using a Fast Fourier Transform) from the smartphone gyroscope Y axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.952 -0.983 -0.978 -0.972 -0.978 ...
 - Unit of measurement: radians/second
 
###freqBodyGyro.mean.Z
Mean value of angular velocity from the frequency domain signal (produced using a Fast Fourier Transform) from the smartphone gyroscope Z axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.909 -0.963 -0.962 -0.961 -0.963 ...
 - Unit of measurement: radians/second

###freqBodyGyro.std.X
Standard deviation of angular velocity from the frequency domain signal (produced using a Fast Fourier Transform) from the smartphone gyroscope X axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.882 -0.989 -0.976 -0.975 -0.981 ...
 - Unit of measurement: radians/second

###freqBodyGyro.std.Y
Standard deviation of angular velocity from the frequency domain signal (produced using a Fast Fourier Transform) from the smartphone gyroscope Y axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.951 -0.982 -0.977 -0.956 -0.977 ...
 - Unit of measurement: radians/second
 
###freqBodyGyro.std.Z
Standard deviation of angular velocity from the frequency domain signal (produced using a Fast Fourier Transform) from the smartphone gyroscope Z axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.917 -0.963 -0.967 -0.966 -0.963 ...
 - Unit of measurement: radians/second

###freqBodyGyro.meanFreq.X
Weighted average of the frequency components to obtain a mean frequency value of angular velocity from the frequency domain signal (produced using a Fast Fourier Transform) from the smartphone gyroscope X axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.00355 0.10261 -0.08222 -0.06609 -0.02272 ...
 - Unit of measurement: radians/second

###freqBodyGyro.meanFreq.Y
Weighted average of the frequency components to obtain a mean frequency value of angular velocity from the frequency domain signal (produced using a Fast Fourier Transform) from the smartphone gyroscope Y axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.0915 0.0423 -0.0267 -0.5269 0.0681 ...
 - Unit of measurement: radians/second
 
###freqBodyGyro.meanFreq.Z
Weighted average of the frequency components to obtain a mean frequency value of angular velocity from the frequency domain signal (produced using a Fast Fourier Transform) from the smartphone gyroscope Z axis, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: 0.0105 0.0553 0.1477 0.1529 0.0414 ...
 - Unit of measurement: radians/second

###freqBodyAccMag.mean
Mean value of the magnitude of the three-dimensional body acceleration frequency domain signal (produced using a Fast Fourier Transform) from the smartphone accelerometer, calculated using the Euclidean norm, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.862 -0.975 -0.966 -0.939 -0.962 ...
 - Unit of measurement: standard gravity units 'g'

###freqBodyAccMag.std
Standard deviation of the magnitude of the three-dimensional body acceleration frequency domain signal (produced using a Fast Fourier Transform) from the smartphone accelerometer, calculated using the Euclidean norm, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.798 -0.975 -0.968 -0.937 -0.963 ...
 - Unit of measurement: standard gravity units 'g'

###freqBodyAccMag.meanFreq
Weighted average of the frequency components to obtain a mean frequency value of the magnitude of the three-dimensional body acceleration frequency domain signal (produced using a Fast Fourier Transform) from the smartphone accelerometer, calculated using the Euclidean norm, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: 0.0864 0.2663 0.237 0.2417 0.292 ...
 - Unit of measurement: standard gravity units 'g

###freqBodyAccJerkMag.mean 
Mean value of the magnitude of the three-dimensional body linear acceleration frequency domain Jerk signal (produced using a Fast Fourier Transform) from the smartphone accelerometer, calculated using the Euclidean norm, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.933 -0.985 -0.976 -0.962 -0.977 ...
 - Unit of measurement: standard gravity units 'g'

###freqBodyAccJerkMag.std 
Standard deviation of the magnitude of the three-dimensional body linear acceleration frequency domain Jerk signal (produced using a Fast Fourier Transform) from the smartphone accelerometer, calculated using the Euclidean norm, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.922 -0.985 -0.975 -0.958 -0.976 ...
 - Unit of measurement: standard gravity units 'g'

###freqBodyAccJerkMag.meanFreq
Weighted average of the frequency components to obtain a mean frequency value of the magnitude of the three-dimensional body linear acceleration frequency domain Jerk signal (produced using a Fast Fourier Transform) from the smartphone accelerometer, calculated using the Euclidean norm, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: 0.266 0.342 0.239 0.274 0.197 ...
 - Unit of measurement: standard gravity units 'g'

###freqBodyGyroMag.mean
Mean value of the magnitude of the three-dimensional angular velocity from the frequency domain signal (produced using a Fast Fourier Transform) from the smartphone gyroscope, calculated using the Euclidean norm, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.862 -0.972 -0.965 -0.962 -0.968 ...
 - Unit of measurement: radians/second

###freqBodyGyroMag.std
Standard deviation of the magnitude of the three-dimensional angular velocity from the frequency domain signal (produced using a Fast Fourier Transform) from the smartphone gyroscope, calculated using the Euclidean norm, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.824 -0.961 -0.955 -0.947 -0.959 ...
 - Unit of measurement: radians/second
 
###freqBodyGyroMag.meanFreq
Weighted average of the frequency components to obtain a mean frequency value of the magnitude of the three-dimensional angular velocity from the frequency domain signal (produced using a Fast Fourier Transform) from the smartphone gyroscope, calculated using the Euclidean norm, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.1398 0.0186 -0.0229 -0.2599 0.1024 ...
 - Unit of measurement: radians/second

###freqBodyGyroJerkMag.mean
Mean value of the magnitude of the three-dimensional angular velocity frequency domain Jerk signal (produced using a Fast Fourier Transform) from the smartphone gyroscope, calculated using the Euclidean norm, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.942 -0.99 -0.984 -0.984 -0.985 ...
 - Unit of measurement: radians/second

###freqBodyGyroJerkMag.std
Standard deviation of the magnitude of the three-dimensional angular velocity frequency domain Jerk signal (produced using a Fast Fourier Transform) from the smartphone gyroscope, calculated using the Euclidean norm, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.933 -0.989 -0.983 -0.983 -0.983 ...
 - Unit of measurement: radians/second
 
###freqBodyGyroJerkMag.meanFreq
Weighted average of the frequency components to obtain a mean frequency value of the magnitude of the three-dimensional angular velocity frequency domain Jerk signal (produced using a Fast Fourier Transform) from the smartphone gyroscope, calculated using the Euclidean norm, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: 0.1765 0.2648 0.1107 0.2029 0.0247 ...
 - Unit of measurement: radians/second

###angle.timeBodyAccMean.gravity 
Mean value of the angle between body acceleration time domain signals from the smartphone accelerometer, obtained by averaging the signals in a signal window sample, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: 0.02137 0.00579 0.0179 -0.00236 0.02121 ...
 - Unit of measurement: no units

###angle.timeBodyAccJerkMean.gravityMean
Mean value of the angle between body acceleration time domain signals from the smartphone accelerometer derived in time to obtain Jerk signal, obtained by averaging the signals in a signal window sample, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: 0.00306 -0.00636 0.01665 -0.0155 0.05536 ...
 - Unit of measurement: no units

###angle.timeBodyGyroMean.gravityMean
Mean value of the angle between angular velocity vectors from the time domain signal from the smartphone gyroscope, obtained by averaging the signals in a signal window sample, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.00167 0.06529 0.04559 0.00713 -0.00581 ...
 - Unit of measurement: no units

###angle.timeBodyGyroJerkMean.gravityMean
Mean value of the angle between angular velocity vectors from the time domain signal from the smartphone gyroscope derived in time to obtain Jerk signal, obtained by averaging the signals in a signal window sample, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: 0.0844 -0.0294 0.0317 0.0367 -0.0344 ...
 - Unit of measurement: no units

###angle.X.gravityMean 
Mean value of the angle between signals from the smartphone accelerometer X axis, obtained by averaging the signals in a signal window sample, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: 0.427 0.617 0.424 0.553 0.599 ...
 - Unit of measurement: no units

###angle.Y.gravityMean 
Mean value of the angle between signals from the smartphone accelerometer Y axis, obtained by averaging the signals in a signal window sample, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.52 -0.52 -0.63 -0.763 -0.825 ...
 - Unit of measurement: no units
 
###angle.Z.gravityMean 
Mean value of the angle between signals from the smartphone accelerometer Z axis, obtained by averaging the signals in a signal window sample, averaged over all subject-activity pairs
 - Class: numeric
 - Unique values/levels: -0.352 -0.479 -0.346 -0.23 -0.168 ...
 - Unit of measurement: no units

Notes: 
======
- Features are normalized and bounded within [-1,1].

License:
========
Use of the dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.