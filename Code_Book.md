Code Book
Human activity recognition using Smartphones Data Set
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited. 
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
Variables
The TIdyData set contains 68 variables.
The table below will be useful to read the variable names
 Feature	 For	        Description
  t	      Time	          prefix 't' to denote time
  f	      Frequency	      prefix 'f' to indicate frequency domain signals
ACC	      Accelerometer	  The features selected for this database come from the accelerometer and gyroscope.
Gyro	    Gyroscpe	

Body		                  The acceleration signal was then separated into body and gravity acceleration
Gravity		

Jerk		                  The body linear acceleration and angular velocity were derived in time to obtain Jerk signals
Mag	      Magnitud	      The magnitude of these three-dimensional signals were calculated using the Euclidean norm
X, Y, Z		                Is used to denote 3-axial signals in the X, Y and Z directions.
 

It is important to mention that for each of the 66 variables, the value presented in the TidyData corresponds
to the mean of each subject for the 6 different kinds of activities.

No.	Variable name	        Type	        Labels
1	    id	                integer	    From 1  to 30
2	  activity	            factor	
		                                  1	WALKING
		                                  2	WALKING_UPSTAIRS
		                                  3	WALKING_DOWNSTAIRS
		                                  4	SITTING
		                                  5	STANDING
		                                  6	LAYING
3	tBodyAcc-mean()-X	        numeric	
4	tBodyAcc-mean()-Y	        numeric	
5	tBodyAcc-mean()-Z	        numeric	
6	tBodyAcc-std()-X	        numeric	
7	tBodyAcc-std()-Y	        numeric	
8	tBodyAcc-std()-Z	        numeric	
9	tGravityAcc-mean()-X	   	numeric	
10	tGravityAcc-mean()-Y	  	numeric	
11	tGravityAcc-mean()-Z	  	numeric	
12	tGravityAcc-std()-X	    	numeric	
13	tGravityAcc-std()-Y	    	numeric	
14	tGravityAcc-std()-Z	    	numeric	
15	tBodyAccJerk-mean()-X	  	numeric	
16	tBodyAccJerk-mean()-Y	  	numeric	
17	tBodyAccJerk-mean()-Z	  	numeric	
18	tBodyAccJerk-std()-X	  	numeric	
19	tBodyAccJerk-std()-Y	  	numeric	
20	tBodyAccJerk-std()-Z	  	numeric	
21	tBodyGyro-mean()-X	    	numeric	
22	tBodyGyro-mean()-Y	    	numeric	
23	tBodyGyro-mean()-Z	    	numeric	
24	tBodyGyro-std()-X	      	numeric	
25	tBodyGyro-std()-Y	      	numeric	
26	tBodyGyro-std()-Z	      	numeric	
27	tBodyGyroJerk-mean()-X		numeric	
28	tBodyGyroJerk-mean()-Y		numeric	
29	tBodyGyroJerk-mean()-Z		numeric	
30	tBodyGyroJerk-std()-X	  numeric	
31	tBodyGyroJerk-std()-Y	  numeric	
32	tBodyGyroJerk-std()-Z	  numeric	
33	tBodyAccMag-mean()	    numeric	
34	tBodyAccMag-std()	      numeric	
35	tGravityAccMag-mean()	  numeric	
36	tGravityAccMag-std()	  numeric	
37	tBodyAccJerkMag-mean()	numeric	
38	tBodyAccJerkMag-std()	  numeric	
39	tBodyGyroMag-mean()	    numeric	
40	tBodyGyroMag-std()	    numeric	
41	tBodyGyroJerkMag-mean()	numeric	
42	tBodyGyroJerkMag-std()	numeric	
43	fBodyAcc-mean()-X	      numeric	
44	fBodyAcc-mean()-Y	      numeric	
45	fBodyAcc-mean()-Z	      numeric	
46	fBodyAcc-std()-X	      numeric	
47	fBodyAcc-std()-Y	      numeric	
48	fBodyAcc-std()-Z	      numeric	
49	fBodyAccJerk-mean()-X	  numeric	
50	fBodyAccJerk-mean()-Y	  numeric	
51	fBodyAccJerk-mean()-Z	  numeric	
52	fBodyAccJerk-std()-X	  numeric	
53	fBodyAccJerk-std()-Y	  numeric	
54	fBodyAccJerk-std()-Z	  numeric	
55	fBodyGyro-mean()-X	    numeric	
56	fBodyGyro-mean()-Y	    numeric	
57	fBodyGyro-mean()-Z	    numeric	
58	fBodyGyro-std()-X	      numeric	
59	fBodyGyro-std()-Y	      numeric	
60	fBodyGyro-std()-Z	      numeric	
61	fBodyAccMag-mean()	    numeric	
62	fBodyAccMag-std()	      numeric	
63	fBodyBodyAccJerkMag-mean()	numeric	
64	fBodyBodyAccJerkMag-std()	numeric	
65	fBodyBodyGyroMag-mean()	  numeric	
66	fBodyBodyGyroMag-std()	numeric	
67	fBodyBodyGyroJerkMag-mean()	numeric	
68	fBodyBodyGyroJerkMag-std()	numeric	

 

Study Design
The experiments have been carried out with a group of 30 volunteers aged between  19 and 48 years.
Each volunteer performed six activities wearing a smartphone (Samsung Galaxy S II) on the waist.
1.	WALKING
2.	WALKING_UPSTAIRS
3.	WALKING_DOWNSTAIRS
4.	SITTING
5.	STANDING
6.	LAYING
Using its embedded accelerometer and gyroscope,  3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured. The experiments have been video-recorded to label the data manually.
 The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.  
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


