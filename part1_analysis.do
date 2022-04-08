*** The following .do file executes the regression model. 

*** (Task 10) --- transforming variables
*** Comment: Generating passenger class dummies and age squared variable. Class1 dummy shows whether the passenger was in the 1st class. And so on. 
generate class1 = 0
replace class1 = 1 if pclass == 1
generate class2 = 0
replace class2 = 1 if pclass == 2
generate class3 = 0
replace class3 = 1 if pclass == 3
generate agesq = age*age  

*** (Task 12 and 14) 
*** Comment: Running simple LPM to test survival probability for different passenger class options (controlled for age). 
reg survived class1 class2 age agesq // the 3rd class represents the base group, that will be captured by the constant term
outreg2 using table1, replace excel dec(3) // saving the table of regression results

*** (Task 13 and 14)
*** Comment1: The first figure shows the age distribution of Titanic passengers. 
*** Comment2: The second graph shows the range of of the ticket fare for each passenger class. 
*** Comment3: Both figures carry no inferential use at all, but rather illustrate that I can plot graphs in Stata.  
*** Comment4: Saving the figures in a different folder as required by Task 1. 
histogram age
graph export "/Users/sherkhanzhumagaziyev/Desktop/CodingAssignment/figures/age_distribution.png"
graph twoway scatter pclass fare
graph export "figures/PassengerClass_vs_Fare.png"

