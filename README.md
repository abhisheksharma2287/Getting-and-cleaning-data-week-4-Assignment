## Getting and Cleaning Data Week 4 Assignment
This repo was created to finish the assignment for week 4 of Getting and Cleaning Data Coursera course.

* First, download and unzip the data file into your R working directory.
* Second, download the R source code into your R working directory.
* Finally, execute R source code to generate tidy data file.

### Data description
The variables in the data X_Final are sensor signals measured with waist-mounted smartphone from 30 subjects. The variable in the data Y indicates activity type the subjects 
performed during recording.

### Project Explaination
This project includes four files: README.md, codebook.md, run_analysis.R, tidy_data.txt

Followings are done:

* Download the dataset to my working directory and unzip.
* Load the dataset: X_train.txt, X_test.txt, Y_train.txt, Y_test.txt, subject_train.txt, subject_test.txt, features.txt, activity_labels.txt.
* Merges the X_train and X_test.txt.
* Merges the Y_train and Y_test.txt.
* Merges the subject_train and subject_test.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set.
* Appropriately labels the data set with descriptive variable names.
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject.