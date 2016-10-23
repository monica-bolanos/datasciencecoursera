
Test<- read.table("./UCI HAR Dataset/test/X_test.txt") #2947 obs. of 561 variables
  #The text file "features" contains the name of the 561 variables present in both test and
  #trainning sets.
  varname<- read.table("./UCI HAR Dataset/features.txt",sep=".")
  #I am keeping the number (first column value if sep =" ") to make the variable names uniques.
  names(Test)<- varname$V1
  #We the activty that was meassured for each subject. 
  #The information is available in the "y_test" file
  Testact<- read.table("./UCI HAR Dataset/test/y_test.txt")
  names(Testact) <-"activity"
  Test<- cbind(Testact,Test)
  #Finally we need to identify our subjects. For that we will use the "subject_test" file
  Testid<- read.table("./UCI HAR Dataset/test/subject_test.txt")
  names(Testid) <-"id"
Test<- cbind(Testid,Test) #2947 obs. of 563 variables

#We do the same to create the Training Set.
Train<- read.table("./UCI HAR Dataset/train/X_train.txt") #7352 obs of 561 variables
  names(Train)<- varname$V1
  Trainact<- read.table("./UCI HAR Dataset/train/y_train.txt")
  names(Trainact) <-"activity"
  Train<- cbind(Trainact,Train) #7352 obs of 562 variables
  Trainid<- read.table("./UCI HAR Dataset/train/subject_train.txt")
  names(Trainid) <-"id"
Train<- cbind(Trainid,Train) #7352 obs of 563 variables
rm("Testact", "Testid", "Trainact", "Trainid",varname)


#Step1 : Merges the training and the test sets to create one data set.
DataT<- rbind(Test,Train) #10 299 obs. of 563 variables


#Step2 : Extracts only the measurements on the mean and standard deviation for each measurement:
#mean(): Mean value
#std(): Standard deviation
# meanFreq is not included in the dataset.
# Nor all the angle average variables. 
#gravityMean
#tBodyAccMean
#tBodyAccJerkMean
#tBodyGyroMean
#tBodyGyroJerkMean

library(dplyr)
  DataT<- select(DataT,id,activity, contains ("mean()"), contains("std()"))
  DataT<- arrange(DataT,id) #10299 obs. of 68 variables

  
  
#Step 3 : Uses descriptive activity names to name the activities in the data set.
  DataT$activity<- factor(DataT$activity, levels=c(1,2,3,4,5,6), 
                        labels=c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS","SITTING", "STANDING","LAYING")) 

  
                                                                          
#Step 4 : Appropriately labels the data set with descriptive variable names.

#I left the number of the variable (V1 of the features file) on porpouse because there were some 
#variables with the same name. So, to make them unique i decided to include the number.
#Now that we only have the variables that we need I am goint to take out the number.
  
splitNames=strsplit(names(DataT), " ")
element2 <-function(x){
  if(is.na(x[2])){x[1]}
  else {x[2]}
  }
names(DataT)<-sapply(splitNames,element2)    




#Step 5 : From the data set in step 4, creates a second, independent tidy data set
#with the average of each variable for each activity and each subject.
  
TidyData<- group_by(DataT,id, activity)  

TidyData<- summarise_each(TidyData, funs(mean)) #180 obs. of 67 variables
#6 activities for each 30 subjects, we have 180 observations



write.table(TidyData, file="TidyData.txt", sep=" ")





