# cleaningdata
Repo for Getting and Cleaning Data Project

*****************************************************************************************************************************

Original assignment/project:

You should create one R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

*****************************************************************************************************************************

Instructions to run the script in R:

Script name: run_analysis.R

The script assumes that your current working directory is the main data folder (along side the test and training folders in the data set).

Assuming the run_analysis.R script is in your currect working directory
on R console type: source("run_analysis.r")

Assumption: Script assumes that you've already installed these R packages - dplyr, stringr

*****************************************************************************************************************************

Output

Once you run the run_analysis.R script file in R, it will generate an output file with name tidydata.txt in your current working directory. This file contains the data set described in the step 5 of the project assignment below.

Original assignment/project:
You should create one R script called run_analysis.R that does the following. 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Please read the CodeBook.md file in this repo for details on the variables in the output file.

*****************************************************************************************************************************

For more details on the original data set, please visit: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

*****************************************************************************************************************************
