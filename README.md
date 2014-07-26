#Description

run_analysis.R script is used for reading in the test and training data from comma separated datafiles X_test.txt and X_train.txt. Script uses 
the features.txt file for naming the columns, and extracts the columns containing data on the means and standard deviations of various measurements 
(these are described in detail in Codebook.md contained in this repository) after combining the training and test data. Furthermore the script calculates 
means of measurements grouped together by different activities performed by different individuals(so there are all in all 180 groups, 30 individuals times 
6 activities). All the datafiles are available at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
