SELECT * FROM angela.student_performance_data;
-- data cleaning
SELECT  Gender,Ethnicity, ParentalEducation, StudyTimeWeekly, tutoring,Absences,
	ParentalSupport,Extracurricular, Sports, Music, Volunteering, GPA
    FROM angela.student_performance_data;
-- CTE VIEW
CREATE VIEW Student_performance_data_view as
WITH student_performance_data AS (
    SELECT 
        CASE 
            WHEN gender = 1 THEN 'M'
            WHEN gender = 0 THEN 'F' 
        END AS gender,
        CASE 
            WHEN ethnicity = 0 THEN 'ASIAN'
            WHEN ethnicity = 1 THEN 'Black Americans'
            ELSE 'Canadian'
        END AS ethnicity,
        parentalEducation, 
        StudyTimeWeekly, 
        Absences,
        case
        WHEN Tutoring = 0 THEN "N"
        WHEN Tutoring = 1 then "Y"
        end as tutoring,
        ParentalSupport, 
        Extracurricular,
        Sports, 
        Music, 
        Volunteering, 
        GPA
   FROM angela.student_performance_data
)
SELECT * FROM student_performance_data;
-- WHICH GENDER PERFORMS BEST IN THIS SCHOOL
-- It shows that male are performing better than the females.
SELECT 
    SUM(CASE WHEN gender = 'M' THEN 1 ELSE 0 END) AS count_male, 
    SUM(CASE WHEN gender = 'F' THEN 1 ELSE 0 END) AS count_female,
    gpa
FROM student_performance_data_view
GROUP BY GPA
HAVING GPA >3.5
ORDER BY GPA;



-- CORRELATION WITH 1. STUDYTIMEWEEKLY
-- This has proven that with high reading time does not necesarily mean the student will score high Gpa as we have seen the student had even less than 1 GPA but with high reading time reduces thwe level of lower GPA so its a good idea to study
SELECT StudyTimeWeekly, GPA
FROM student_performance_data_view
where StudyTimeWeekly >= 20
group by GPA,StudyTimeWeekly
ORDER BY GPA 
-- BETWEEN 0- 10 STUDY TIME
-- Those that had little study time had weak Gpa
-- But there are a number of student that did so well with with less study so other factors affect the performance but its safe to say with leszs time study there is a negative correlation 
SELECT StudyTimeWeekly, GPA
FROM student_performance_data_view
where StudyTimeWeekly BETWEEN 0 AND 10
group by GPA,StudyTimeWeekly
ORDER BY GPA 
-- 2. Absences
-- Lets see if absence together with studytime weekly wil have a -ve correlation with GPA
SELECT StudyTimeWeekly, Absences, GPA
FROM student_performance_data_view
where StudyTimeWeekly BETWEEN 0 AND 10
and Absences > 0
group by StudyTimeWeekly,Absences, GPA
ORDER BY GPA,Absences;
-- From the finding its clear to say that absence in class has a -ve impact on GPA and those that had high absences had to have high studytimeweekly mosty
-- 3. Tutoring
-- Most student that did poorly with GPA and lacked Tutoring and their absence was high and low studytimeweekly
SELECT StudyTimeWeekly, Absences,Tutoring,GPA
FROM student_performance_data_view
WHERE StudyTimeWeekly BETWEEN 0 AND 10
AND Absences > 0
and Tutoring = "N"
GROUP BY StudyTimeWeekly, Absences, Tutoring,GPA
ORDER BY GPA,Absences,StudyTimeWeekly;
-- 4. Lets see whether parent had any influence on the GPA
SELECT ParentalEducation, GPA
FROM student_performance_data_view
group by ParentalEducation,GPA
order by ParentalEducation
-- ParentalEducation did not play a major role as the student with the highest GPA which is 4 the parent had 1 
-- So we can't use this a measure to that would affect GPA
SELECT ParentalSupport, GPA
FROM student_performance_data_view
where ParentalSupport >= 2
group by ParentalSupport,GPA
order by ParentalSupport
-- Parental support has a key impact on the GPA.
-- Those that the parent supported well from 2 and above there were reduced lower GPA compared to those students that had lower parent support

-- 5. Extracurricular
select extracurricular,sports,music, volunteering,GPA
FROM student_performance_data_view
WHERE extracurricular = 1
AND sports = 1
AND music =1
AND volunteering =1
GROUP BY extracurricular,sports,music, volunteering,GPA
ORDER BY GPA
-- It shows that those students that had extracurricular,sports,music, volunteering scored 1 and above in GPA