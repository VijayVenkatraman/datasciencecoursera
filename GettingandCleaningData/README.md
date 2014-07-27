{\rtf1\ansi\ansicpg1252\cocoartf1187\cocoasubrtf400
{\fonttbl\f0\froman\fcharset0 Times-Roman;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue233;}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc0\levelnfcn0\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{decimal\}.}{\leveltext\leveltemplateid1\'02\'00.;}{\levelnumbers\'01;}\fi-360\li720\lin720 }{\listname ;}\listid1}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}}
\margl1440\margr1440\vieww19020\viewh12280\viewkind0
\deftab720
\pard\pardeftab720\sa280

\f0\b\fs36 \cf0 Course Project for Getting and Cleaning Data:\
\pard\pardeftab720\sa240

\b0\fs24 \cf0 The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.\
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:\
\pard\pardeftab720\sa240
{\field{\*\fldinst{HYPERLINK "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"}}{\fldrslt \cf2 \ul \ulc2 http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones}}\
Here are the data for the project:\
\pard\pardeftab720\sa240
{\field{\*\fldinst{HYPERLINK "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"}}{\fldrslt \cf2 \ul \ulc2 https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip}}\
You should create one R script called run_analysis.R that does the following.\
\pard\tx220\tx720\pardeftab720\li720\fi-720
\ls1\ilvl0\cf0 {\listtext	1.	}Merges the training and the test sets to create one data set.\
{\listtext	2.	}Extracts only the measurements on the mean and standard deviation for each measurement.\
{\listtext	3.	}Uses descriptive activity names to name the activities in the data set.\
{\listtext	4.	}Appropriately labels the data set with descriptive activity names.\
{\listtext	5.	}Creates a second, independent tidy data set with the average of each variable for each activity and each subject.\
\pard\pardeftab720\sa240
\cf0 Good luck!\
\pard\pardeftab720\sa280

\b\fs36 \cf0 Steps:\
1) The main script is run_analysis.R, please read CodeBook.md to get more details. Open the R script.\
2)  Set the working directory/folder to where the data is stored (i.e., unzipped UCI HAR Dataset folder).\
3) Run the R script run_analysis.R to generate the output_tidydataset.txt \
}