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


 

Conclusion: Insights on Factors Affecting Student Performance
From the analysis of student performance data at Ol Donyo Sabuk Preparatory, several critical factors have emerged that shed light on the dynamics influencing academic outcomes.
Gender Disparity:
Interestingly, male students exhibited higher average GPAs than their female counterparts across several subjects. While the reasons behind this disparity could be multifaceted—ranging from study habits to learning environments—it's crucial to explore further potential differences in classroom engagement, access to resources, or teaching strategies that may contribute to this gap. Ensuring equitable learning support for both genders is essential for fostering balanced academic growth.
Study Time:
A deeper look into study habits revealed that increased study time did not always correlate with significantly higher GPAs. However, it did help reduce the likelihood of students receiving lower grades. Students who devoted more time to studying had fewer instances of underperformance, suggesting that while study efficiency matters, consistent time investment can safeguard against falling behind.
Absenteeism:
Absenteeism was a precise predictor of lower academic performance. Students with higher rates of absenteeism consistently demonstrated lower GPAs, even when they attempted to compensate with more study time. The data suggests that the negative impact of missed classroom time is challenging to overcome solely through individual effort, highlighting the importance of regular attendance to maintain academic success.
Parental Support:
Active parental involvement emerged as one of the strongest positive influences on student performance. Students who received more support from their parents—whether through regular communication with teachers, help with homework, or emotional encouragement—tended to achieve higher GPAs. Strengthening parent-teacher partnerships could amplify these effects, especially for students showing signs of academic struggle.
Extracurricular Participation:
Students actively engaged in extracurricular activities, such as sports, arts, or clubs, consistently outperformed their peers in terms of GPA. This suggests that balanced development—combining academics with extracurricular interests—has a positive effect on overall academic achievement. It also points to the importance of promoting well-rounded student participation in school activities.
Actionable Insights:
Gender Support Initiatives: The school should consider targeted programs to address the gender gap in academic performance. Providing more tailored resources or mentorship for female students could help level the playing field, ensuring both genders have equal opportunities to excel.
Focus on Study Efficiency: Rather than simply encouraging longer study hours, the school could promote better study habits and techniques. Workshops on time management, study strategies, and focused learning could help students make the most out of their study time and improve outcomes.
Improving Attendance: Given the vital link between absenteeism and lower GPAs, it is critical to address the root causes of absenteeism. Schools can implement attendance monitoring programs, provide support for frequently absent students, and encourage parents to prioritize consistent school attendance.
Enhancing Parental Engagement: Creating opportunities for parents to become more involved in their children's education can yield significant benefits. Regular parent-teacher meetings, homework support programs, and open communication channels between parents and the school will boost academic outcomes.
Encouraging Extracurricular Involvement: Encouraging broader participation in extracurricular activities can contribute to better student performance. Providing more diverse opportunities and promoting balanced development will help students thrive both inside and outside the classroom.
By implementing these strategies, the school can create an environment that supports holistic student development, fosters academic excellence, and addresses the diverse needs of its students.

