Original Data Source

The data in the “UCI HAR Dataset” subfolder was originally extracted from the URL to the zip file given in the project assignment 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip The description for the original
research project that generated this data set can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Transformations

    Data frames for the sensor input features (X), output classification labels (y), and subjects were combined by rows, making sure the training data frame rows were added above the test data frame rows.

    The “X” data frame was reduced to keep the columns ending in -mean() and -std() as defined in the project assignment instructions.

    The “y” data frame was augmented to include the full English text name for each activity numeric code.

    All 3 data frames — subject, y, X — were combined by column to form a data table called “merged”

    The final tidy data table is a result of the merged data table grouped by subject and activity in order to find the average of each X-related column per subject and activity.

Original Data Variables Descriptions

The original README.txt file included in “UCI HAR Dataset” provides more detailed explanations of the original data, and directs you to the other included text files explaining subsets of that data.
