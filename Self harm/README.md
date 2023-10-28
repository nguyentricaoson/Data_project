# Self Inflicted Deaths Project
*By Nguyễn Trí Cao Sơn*

Welcome to my data analysis project where I learn more about the WHO intentional and self inflicted injuries from 1950 to 2021 with data from 6 different regions with over 120 countries. The dataset is divided into 3 genders: male, female and unknown with age groups ranging from 0 to over 85 years old.

This dataset is collected from [WHO database](https://platform.who.int/mortality/themes/theme-details/topics/indicator-groups/indicator-group-details/MDB/self-inflicted-injuries), complying with [Copyright, Licensing and Permissions](https://www.who.int/about/policies/publishing/copyright) policy.

**If you want to view a summary dashboard, please [click here](https://public.tableau.com/shared/SHWD2K24Y?:display_count=n&:origin=viz_share_link)**

**If you want to view in-depth analysis and code, please [click here](https://github.com/nguyentricaoson/Data_project/blob/main/Self%20harm/WHO_suicide_data.ipynb).**

*Note: The dashboard does not recreate Jupyter Notebook analysis but adds more information to it.*
### Data features explain
Number: number of self inflicted deaths.

Percentage of cause-specific deaths out of total deaths: the ratio of self inflicted deaths and total deaths.

Death rate per 100 000 population: number of self inflicted deaths if the population were 100000.
### Analysis conclusions and recommendations
After conducting data cleaning, exploration and visualization, there are some insights worth considering:
- On the global scale:
  - The year 1979 to 1982 shows an sudden upward trend of number of self inflicted deaths.
  - 45-49 age group has the highest average number of self inflicted deaths. However, the age group with highest rate of suicide is 85+.
  - People ranging from 20 to 59 years old tend to be the most involved in suicidal acts.
- On the regional scale:
  - North America and the Caribbean region has the highest average number of deaths.
  - Europe has the highest suicide rate.
  - Asia death rate has been decreasing at a fast pace throughout history.
- Gender-specific:
  - Overall, women are less involved in self harm acts than men.
  - In Asia, women account for over 30% self inflicted deaths while men only account for less than 70%.

With these insights, I'll provide some suggestions:
- Acknowledge the reason people are the most vulnerable to self harm at the age 45 to 49 or 85+ and raise awareness to these specific age groups.
- People should not commit self inflicted harm, especially younger people. Schools should implement life skills programs dedicated to raise awareness.
- There is definitely an answer to why men are always having higher number of deaths than women no matter the difference in geographics, locations or age groups. We should be more empathetic to men so as to understand their difficulties, hence achive true gender equality.
- The fact that Asian women are more affiliated with self harm than women from other parts of the world can also be a proof of gender inequality.
- We must take firm steps to address the obsolete sections of our culture where they lower women's importance and over pressure men. This will definitely raise the level of happiness for humanity.
### Things I could have done differently
After analyzing the dataset and creating dashboards, there are a few things I could have done differently:
- Instead of taking the average of death rate per 100000 population to quickly present the data, I could have calculated the weighted death rate (accounting for the difference in countries' populations) for more accuracy and precision.
- This project revolves around building an effective dashboard, but I could always have included some hypothesis tests to increase the validation of my claims.
### Final thoughts
Humans, out of all animals on Earth, have a unique sense of self and self-awareness. Sadly, some people use this gift to harm themselves, leading to intentional injuries and suicides worldwide. I hope we can discover the root causes of this and take steps to make the world a happier place while reducing these tragic actions.
