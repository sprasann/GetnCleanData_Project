# Getting and cleaning data course project repository

This repository contains details of the files created for Getting and Cleaning Data course project.

The project is about cleaning the acceleromter data from the Human Activity Recognition Using Smartphone data and creating a tidy data set

The data for this is obtained from UCI Machine learning laboratory from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The following files are present in this repository

##run_analysis.R
  This file contains the code for creating the tidydata set "UCI_HAR_tidydata.txt".  The code does not take any input. It expects the datafile to be unzipped and available in the working directory.  The name of the datadirectory is hardcoded as **"UCI HAR Dataset"**.  This dataset is transformed to the tidy dataset and outputs the file UCI_HAR_tidydata.txt
##UCI_HAR_tidydata.txt
  This file contains the tidy dataset. The data has been written out via read.table and row.names = FALSE. This can be read and viewed by
	
	data <- read.table("UCI_HAR_tidydata.txt", header = TRUE) 
	View(data)


##codebook.md
  This file contains the description of the variables present in the dataset "UCI_HAR_tidydata.txt"
##README.md
  This document
