# Student-Performance-Analysis-for-Ol-Donyo-Sabuk-Preparatory-School-using-SQL-and-Power-BI
Objective: The goal of this project is to analyze student performance data to help the school's Board of Members identify Key Performance Indicators (KPIs) for their Annual General Meetings with parents. The project involves cleaning messy data, performing exploratory analysis, and deriving insights on various factors affecting student performance.
________________________________________
Project Steps:
1. Data Cleaning and Preprocessing:
•	Removing Duplicates and Handling Missing Values: Ensured the dataset was free of duplicate entries and handled missing values to maintain the integrity of the data.
•	Data Standardization: Used SQL functions such as UPPER(), CAST(), and CONVERT() to standardize text case and ensure consistent data types across the dataset.
•	Data Format Consistency: Standardized gender and ethnicity data using case statements
•	Created a CTE view so as we can use the detailed format to query
2. Exploratory Data Analysis (EDA):
I.	Which Gender Performs Better?
o	Queried the dataset to compare GPA performance by gender. The findings suggest males performed better than females overall.
 
II.	Study Time vs. GPA Correlation:
Investigated the impact of study time on GPA. Results show that while a higher study time doesn't guarantee a high GPA, students with more study time generally have fewer low GPAs.
Here I had to do between 0 – 10 and 20. This are the findings respectively.  


 
III.	Absence Impact:
Explored the relationship between absences and GPA. A higher absence count correlates negatively with GPA, especially when combined with low study time. This was a key factor that caused the lower rate in GPA

  

IV.	Tutoring Impact
Most student that did poorly with GPA and lacked Tutoring and their absence was high and low studytimeweekly. 
 


V.	Parental Education and Support: Parental education showed little direct impact on GPA, while parental support significantly improved student performance.
 

VI.	Extracurricular Activities: Participation in extracurricular activities like sports, music, and volunteering was associated with higher GPAs.
 
3. Data Visualization: This is where I Utilized various charts to visualize the data so as to dive deep into the insights. Visualizations are powerful tools for presenting complex data in an understandable manner. 


 

Conclusion:
1.	Absences are key to poor performance; the child should minimize it if possible.
2.	If absences occur due to unavoidable circumstances, the parents should consider taking their child to tutoring as it helps the students perform better.
3.	A lot of study time did not translate to high grades, so the students’ needs more quality time over quantity. 
4.	Parental support also plays a vital role, so we encourage parents to be involved in their child's education by giving gifts when they hit a specific grade or any other positive thing to promote their child.
5.	Lastly, we encourage you parents to enroll your child in at least one extra curriculum as it is also a good booster for better grades.
