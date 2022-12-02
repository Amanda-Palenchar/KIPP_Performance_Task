# KIPP_Performance_Task

## Overview
This analysis examines MAP scores for a Texas-based branch of a charter management organization (CMO). The investigation identifies key trends in the data and provides visualizations to help a user digest and act on the findings. 

## Entity Relationship Diagram & Merging
Each of the three available CSV tabs (Student_Info, MAP_Scores, and Special_Programs) have a unique identifier that can be used as both a primary and foreign key: student_id. The entity relationship diagram below depicts the features of each of the three CSV files and shows how they are combined into one file using SQL. 

![Data_ERD](Images/Data_ERD.png)

## Data Cleaning

## Data Visualization
All data visualization was completed using a Tableau Public data story. The KIPP Performance Task data story has multiple pages that are meant to be utilized with the following in mind: 

- **Math RIT Score School Comparison** & **Reading RIT Score School Comparison**: The boxplots are meant to support network level and school based admin in understanding school overall performance (spread of data, median improvement, etc.). The school filter on the right can be used to narrow down search fields to make relevant comparisons (i.e. middle school to middle school).

![RIT_score](Images/RIT_score.png)

- **Network Math Growth** & **Network Reading Growth**: Visuals are best used by network level admin to compare typical and actual growth from fall to spring and is broken down by program. Bar widths represent student population. This visual could support general understanding of network level special services.

![network_growth](Images/network_growth.png)

- **Math Growth Rate by Grade** & **Reading Growth by Grade**: Visuals are best used by network level admin to compare growth from fall to spring by grade. Mousing over each bar will show growth numbers and the number of students represented by the bar. This visual could support understanding of grade level curriculum effectiveness and help to further zoom in on special services.

![growth_by_grade](Images/growth_by_grade.png)

- **Math Growth Breakdown** & **Reading Growth Breakdown**: Visuals are best used by those focused on school level data (principal coaches, school admin, grade level leaders, etc.). Users are meant to utilize the filters on the right side of the screen to narrow their search for specific schools, grades, or programs in order to learn more specifically about their school or make relevant comparisons.

![growth_breakdown](Images/growth_breakdown.png)

## Conclusions

## Considerations
