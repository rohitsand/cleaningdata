# Code Book for Getting and Cleaning Data Project


**subjectnumber**(integer): An identifier of the subject who carried out the experiment.

Range: 1 to 30

**activitynumber**(integer): An identifier of the activity being performed by the subject:
   1. WALKING
   2. WALKING_UPSTAIRS
   3. WALKING_DOWNSTAIRS
   4. SITTING
   5. STANDING
   6. LAYING

Range: 1 to 6

**activityname**(character): Activity label for **activitinumber**. 

Range: One of ("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")

**[VariableName].average**(number, 15 decimal places): Average of each variable for each activity and each subject. 
where **[VariableName]** is the variable name from the original data set. 

Range: -1 to 1


For details on the original data set and its variables, please see [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

More details on the origial data set:
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones ](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


