*** The following .do file provides the basic summary and filters the dataset.

cd /Users/sherkhanzhumagaziyev/Desktop/CodingAssignment

*** (Task 7)
import delimited "titanic.csv", varnames(1) bindquotes(strict) encoding("utf-8") clear
browse
summarize

*** (Task 8)
*** The dataset used provides clean and error-free data. Though there are missing values age, SIBlisngsSPouses variables, these missing values are auto omitted by STATA, so there is no need to fix anything.

*** (Task 5)
*** Comment1: Running for-loop to summarize "survived" variable for each passenger class.
*** Comment2: The mean of "survived" shows the survival probability for the person in 1st, 2nd, and 3rd passenger classes respectively. 
forvalues i = 1/3 {
   summarize survived if pclass == `i'
}
 
*** (Task 9) --- aggregating Data
*** Comment: An alternative approach to estimate survival probability for each group is to generate a new variable by aggregating data using "egen..by/mean" commands.
egen avg_survival = mean(survived), by(pclass)

*** (Task 10) --- filtering observations and variables
*** Comment: Dropping unnecessary variables, that are not used in the follow-up analysis. 
*** Comment: Children were prioritized during the evacuation, independent of the Passenger Class. Therefore, I keep the data only for adults older than 18. 
drop name sibsp parch ticket cabin embarked
keep if (age > 18)

*** (Task 11)
*** Comment: Saving the changes made in the dataset. 
save "titanic_updated.csv"
