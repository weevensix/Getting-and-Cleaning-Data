---
title: "README"
author: "Andrew O'Brien"
date: "4 July 2022"
output: html_document
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
More information about all the variables included in the tidy data set is given in the code book as well as summary information about the variable values.
[link to the code book](CodeBook.md) 

###Guide to create the tidydata file
To create the tidydata txt file just run the script run_analysis.R in your working directory. 
The script uses base R and the dplyr package. The latter should be installed before running the script.

###Explanation of the run_analysis.R script
The R script run_analysis.R creates the tidy data file
[link to the R script that produces the tidy data file](run_analysis.R)

1. The script creates a data directory in the working directory if it doesn't exist, downloads a zip file from the UCI website and reads the train and test data sets, features and labels into R
2. The script renames the X train and test data set column headers using the feature names, y train and test column header with "activity", subject train and test with "subject" and activity labels with "activity" and "description". More descriptive names are introduced in step 7.
3. The X and y train data sets columns are merged together, as are the X and y test data sets, before creating a single combined data set by appending the merged train and test data sets
4. Only the mean, standard deviation and mean frequency value measurements are required for the tidy data set. The select function from the dplyr package is used to extract these columns from the single combined data set in step 3 to create a new data set along with the "subject" and "activity" columns.
5. The activity labels in the data set are renamed using the descriptive labels in the activity_labels file 
6. The average of each variable, for each subject activity pair, in the data set is calculated using the summarise_all function from dplyr package to create a new tidy data set. 
7. The column headers in the tidy data set are renamed to remove any special characters etc. and make them more descriptive, e.g. use "time" rather than "t", use "freq" rather than "f", use "Body" rather than "BodyBody"
8. The tidy data set is output as a text file 
[link to the tidy data text file](tidydata.txt) 