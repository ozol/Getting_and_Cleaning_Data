library(data.table)
## read data
setwd("UCI HAR Dataset/")

X_train = read.table('train/X_train.txt')
X_test = read.table('test/X_test.txt')
X = rbind(X_train, X_test)
features = read.table('features.txt')
names(X) = features[,2]
X_tidy = X[grep('-mean\\(|-std', names(X))]
y_train = read.table('train/y_train.txt')
y_test = read.table('test/y_test.txt')
y = rbind(y_train, y_test)
subject_train = read.table('train/subject_train.txt')
subject_test = read.table('test/subject_test.txt')

## Merge the training and the test sets to create one data set.

subject = rbind(subject_train, subject_test)
names(subject) = 'subject'

## Use descriptive activity names to name the activities in the data set

activity_labels = read.table('activity_labels.txt')
y_labels = cbind(y, lapply(y, function(i){activity_labels[i,2]}))
names(y_labels) = c('activity code', 'activity name')


merged = cbind(subject, y_labels, X_tidy)
library(data.table)
merged = data.table(merged)

## Extract only the measurements on the mean and standard deviation for each measurement

tidy = merged[, lapply(.SD, mean), by=c('subject', 'activity name')]
write.table(tidy, 'tidy.txt')
