# HR Analytics Project
*By Nguyen Tri Cao Son*

Welcome to my HR Analytics Project. The data set I'll be using to conduct thorough analyses is collected from [Kaggle](https://www.kaggle.com/datasets/sanjanchaudhari/employees-performance-for-hr-analytics/), complying with [Open Data Commons Public Domain Dedication and License (PDDL) v1.0](https://opendatacommons.org/licenses/pddl/1-0/).

If you want to view the summary presentation, please [click here](https://docs.google.com/presentation/d/1QQICzR1sx3515o_gp3jvy-a0beUi8bZRAXD6uVg8z14/edit?usp=sharing).

If you want to view the in-depth data preparation and analysis, please [click here](https://github.com/nguyentricaoson/Data_project/blob/main/HR%20Analytics/HR.ipynb).
## Purpose
The goal of this project is to assess the average training score of employees and the quality of training sessions from 9 different departments and make suggestions to improve employee engagement, productivity, and overall organizational effectiveness.

## Conclusions
After analyzing data from HR, I have concluded some major points:
- Each department's score distribution follows a normal curve, together they form 4 peaks: around 50, 60, 70 and 80-85 points. The reason the scores are mostly distributed around those "convenient" values is still unknown.
- Analytics, R&D, Technology and Procurement perform better than average, while Operations, Finance, Legal, HR and Sales & Marketing decrease in performance score compared to last year.
- Technology and Procurement have high training score but low proportion of employees who met KPI more than 80, while Operations and Finance have low training score but high proportion of employees who met KPI more than 80
- Most employees only attended 1 or 2 training sessions.
- There's little to no correlation between number of trainings and performance score of employees.

## Questions
With these insights, several questions arise:
- Why do the score distributions of different departments vary?
- Are the KPI thresholds too high or are the training sessions not capturing the scope of work?
- Is the quality of those training sessions reliable?

## What to do next
- Find out why some employees don't have an educational background.
- Revise the performance score of each department: Why do the score distributions vary between departments?
- Revise KPI threshold of each department: Is it too high or too low?
- Reassess the quality of training sessions: Did they provide relevant skills for each department effectively?
- Build a machine learning model to predict if an employee could meet their KPI or win an award.
