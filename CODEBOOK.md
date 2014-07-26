#CODEBOOK

This codebook describes the variables of the final tidy dataset, and the steps taken to obtain the tidy set from the original data files.

##Processing steps

The files are first read in from the original text files contained in directories test and train. Names of datafiles are X_test.txt and X_train 
respectively. IDs linking the test subjects and their activities to data then added to data from the files subject_test.txt,y_test.txt and 
subject_train.txt, y_train.txt respectively. Columns of the test and training dataframes are named using the feature IDs from features.txt file.
Next the test and training datasets are combined into one big dataset. Final tidying step is to extract the columns containing either "mean" or "std".
The final tidy dataset is obtained by calculating the means of different measurements grouped in 180 groups(30 indivitual times 6 activities) according 
individuals and activities. Tidy dataset is written to file tidyset.csv with all default parameters in write.csv() i R language.

##Variables

The variables contained are listed below. The unit for all the acceleration measurements is standard gravity unit "g" (=9.81m/s^2). Unit for others
is angular velocity in units radian/second. Everything is normalized to the range [-1,1]. The variable activity is the name of the activity individual 
has been performing is WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,STANDING,SITTING,LAYING the names for activities are, hopefully, self explanatory.

##List of variable names 
activity
indvidual
MEAN OF:tbodyacc-std()-x
MEAN OF:tbodyacc-std()-y
MEAN OF:tbodyacc-std()-z
MEAN OF:tgravityacc-std()-x
MEAN OF:tgravityacc-std()-y
MEAN OF:tgravityacc-std()-z
MEAN OF:tbodyaccjerk-std()-x
MEAN OF:tbodyaccjerk-std()-y
MEAN OF:tbodyaccjerk-std()-z
MEAN OF:tbodygyro-std()-x
MEAN OF:tbodygyro-std()-y
MEAN OF:tbodygyro-std()-z
MEAN OF:tbodygyrojerk-std()-x
MEAN OF:tbodygyrojerk-std()-y
MEAN OF:tbodygyrojerk-std()-z
MEAN OF:tbodyaccmag-std()
MEAN OF:tgravityaccmag-std()
MEAN OF:tbodyaccjerkmag-std()
MEAN OF:tbodygyromag-std()
MEAN OF:tbodygyrojerkmag-std()
MEAN OF:fbodyacc-std()-x
MEAN OF:fbodyacc-std()-y
MEAN OF:fbodyacc-std()-z
MEAN OF:fbodyaccjerk-std()-x
MEAN OF:fbodyaccjerk-std()-y
MEAN OF:fbodyaccjerk-std()-z
MEAN OF:fbodygyro-std()-x
MEAN OF:fbodygyro-std()-y
MEAN OF:fbodygyro-std()-z
MEAN OF:fbodyaccmag-std()
MEAN OF:fbodybodyaccjerkmag-std()
MEAN OF:fbodybodygyromag-std()
MEAN OF:fbodybodygyrojerkmag-std()
MEAN OF:tbodyacc-mean()-x
MEAN OF:tbodyacc-mean()-y
MEAN OF:tbodyacc-mean()-z
MEAN OF:tgravityacc-mean()-x
MEAN OF:tgravityacc-mean()-y
MEAN OF:tgravityacc-mean()-z
MEAN OF:tbodyaccjerk-mean()-x
MEAN OF:tbodyaccjerk-mean()-y
MEAN OF:tbodyaccjerk-mean()-z
MEAN OF:tbodygyro-mean()-x
MEAN OF:tbodygyro-mean()-y
MEAN OF:tbodygyro-mean()-z
MEAN OF:tbodygyrojerk-mean()-x
MEAN OF:tbodygyrojerk-mean()-y
MEAN OF:tbodygyrojerk-mean()-z
MEAN OF:tbodyaccmag-mean()
MEAN OF:tgravityaccmag-mean()
MEAN OF:tbodyaccjerkmag-mean()
MEAN OF:tbodygyromag-mean()
MEAN OF:tbodygyrojerkmag-mean()
MEAN OF:fbodyacc-mean()-x
MEAN OF:fbodyacc-mean()-y
MEAN OF:fbodyacc-mean()-z
MEAN OF:fbodyacc-meanfreq()-x
MEAN OF:fbodyacc-meanfreq()-y
MEAN OF:fbodyacc-meanfreq()-z
MEAN OF:fbodyaccjerk-mean()-x
MEAN OF:fbodyaccjerk-mean()-y
MEAN OF:fbodyaccjerk-mean()-z
MEAN OF:fbodyaccjerk-meanfreq()-x
MEAN OF:fbodyaccjerk-meanfreq()-y
MEAN OF:fbodyaccjerk-meanfreq()-z
MEAN OF:fbodygyro-mean()-x
MEAN OF:fbodygyro-mean()-y
MEAN OF:fbodygyro-mean()-z
MEAN OF:fbodygyro-meanfreq()-x
MEAN OF:fbodygyro-meanfreq()-y
MEAN OF:fbodygyro-meanfreq()-z
MEAN OF:fbodyaccmag-mean()
MEAN OF:fbodyaccmag-meanfreq()
MEAN OF:fbodybodyaccjerkmag-mean()
MEAN OF:fbodybodyaccjerkmag-meanfreq()
MEAN OF:fbodybodygyromag-mean()
MEAN OF:fbodybodygyromag-meanfreq()
MEAN OF:fbodybodygyrojerkmag-mean()
MEAN OF:fbodybodygyrojerkmag-meanfreq()
MEAN OF:angle(tbodyaccmean,gravity)
MEAN OF:angle(tbodyaccjerkmean),gravitymean)
MEAN OF:angle(tbodygyromean,gravitymean)
MEAN OF:angle(tbodygyrojerkmean,gravitymean)
MEAN OF:angle(x,gravitymean)
MEAN OF:angle(y,gravitymean)
MEAN OF:angle(z,gravitymean)