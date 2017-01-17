## This repository contains the files required for the Getting and Cleaning data project

The Script run_analysis.R does the following as per the assignment instructions:

1. Reads in the 3 training files (subject_train.txt, x_train.txt, y_train.txt)
2. Reads in the 3 test files  (subject_train.txt, x_train.txt, y_train.txt)
3. Read in 2 reference data files
    * features.txt which contains the list of features that are measured and related to the columns in x_train
    * activity_labels which can be used to decode the numeric activity variable  	 
4. Combines the training and test datasets
5. Merges the Activity labels to the Activity Code
6. Adds column names to the combined 'X' file using the data in features.txt
7. Extracts from X only those columns that contain mean() or sd()
8. Combines the data on the subjects, their measurements (X) and the activity labels
9. Creates a tidy data set, grouping by subjectID and activitylabel and calculating the mean for all other columns
10. Writes the data set out to a text file 'tidydata.txt'

	