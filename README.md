Getting_and_Cleaning_Data
=========================
The script assumes the Samsung data is extracted in your working directory (and the folder called "UCI HAR Dataset/" exists). 

 run_analysis.R

Script does the following:

    Script merges the training and the test sets to create a unified data set.
    Extracting only the mean and standard deviation measurements for each of the measurement.
    Uses descriptive activity names to name the activities in the data set
    Creates appropriate labels for the data set with descriptive activity names.
    Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Dependancies: The R script relies on the data.table package which needs to be downloaded and installed
