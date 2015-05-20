# store the current directory
initial.dir<-getwd()

# load the necessary libraries
library(dplyr)
library(stringr)

#Load feature names
featureNames <- read.table("./features.txt", header=FALSE, sep="", stringsAsFactor=FALSE)

# load the test dataset and rename columns
xTest <- read.table("./test/X_test.txt", sep = "" , header = FALSE , na.strings ="", stringsAsFactors= FALSE)
colnames(xTest) <- featureNames[,2]

yTest <- read.table("./test/Y_test.txt", sep = "", header=FALSE)
colnames(yTest) <- c("activitynumber")

subjectTest <- read.table("./test/Subject_Test.txt", header=FALSE, sep="\t")
colnames(subjectTest) <- c("subjectnumber")

# load the training data and rename columns

xTrain <- read.table("./train/X_train.txt", sep = "" , header = FALSE , na.strings ="", stringsAsFactors= F)
colnames(xTrain) <- featureNames[,2]

yTrain <- read.table("./train/Y_train.txt", header=FALSE, sep="")
colnames(yTrain) <- c("activitynumber")

subjectTrain <- read.table("./train/Subject_Train.txt", header=FALSE, sep="\t")
colnames(subjectTrain) <- c("subjectnumber")

# Load activity labels and rename columns
activityLabels<-read.table("./activity_labels.txt", header=FALSE, sep=" ")
names(activityLabels) <- c("id","name")

#Combine columns of test data
testData <- subjectTest
testData <- cbind(testData, yTest)
testData <- cbind(testData, xTest) 

#Combine columns of train data
trainData <- subjectTrain
trainData <- cbind(trainData, yTrain)
trainData <- cbind(trainData, xTrain) 

#Combined test and train data rows
allData <- rbind(testData, trainData)

# Get the name of the activity instead of number/id
allData <- merge(allData, activityLabels, by.x = "activitynumber", by.y="id")
names(allData)[564] <- "activityname"

#reorder the column for the sake of readability
allData<-allData[,c(1,2,564,3:563)]

# Extract only the activity and subject related columns
# and columns with mean() or std() in their names
toMatch <- c("mean()", "std()","activitynumber", "activityname", "subjectnumber")
relevantData <- allData[,names(allData[grep(paste(toMatch,collapse="|"), names(allData))])]

# Find the average of all variables grouped by subjectnumber and activityname
allMeans <- relevantData %>% group_by(subjectnumber,activityname) %>% summarise_each(funs(mean))

#Append ".average" to all column names except the first three
nam <- names(allMeans)
names(allMeans)<-ifelse(!(nam %in% c("activitynumber", "activityname", "subjectnumber")), str_c(nam, '.average'),  nam)

# Write to disk
write.table(allMeans, "tidydata.txt", row.names=FALSE)

# change back to the original directory
setwd(initial.dir)
