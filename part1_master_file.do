*** Done by Sherkhan Zhumagaziyev
*** This section provides a (mini) pseudo-analysis using titanic.csv databse. 
*** The following model outlined in the analysis.do estimates the survival probablity on the infamouis Titanic cruise ship depending on the passenger's ticket class. 

*** (Task 15)
*** Comment: Installing a random STATA package just for illustrative purposes. 
ssc install outreg

*** (Task 1)
*** Comment: Navigating through the folders. 
pwd 
cd /Users/sherkhanzhumagaziyev/Desktop/CodingAssignment

*** Run the .do files in the order they are presented. 

*** The following .do file provides the basic summary of the dataset and filters the dataset.
do part1_summary.do

*** The following .do file executes the regression model based on the filtered dataset. 
do part1_analysis.do
