# Socioeconomic and Health Determinants of Maternal Outcomes: A County-Level Analysis for Pregnancy Support Services
This project delivers data-driven insights on maternal health and socioeconomic factors on birth outcomes to highlight and uncover business potentials in opportunistic regions.

## Background and Objectives

Maternal health is a critical factor that influences the well-being of both mothers and their 
new-borns. However, disparities in access to healthcare, socioeconomic resources, and 
support services can significantly impact pregnancy outcomes across different regions. This 
project focuses on identifying counties where pregnant women face higher risks due to 
factors like poor maternal health, limited prenatal care, and economic hardships.
Utilizing key metrics such as pre-pregnancy BMI, average birth weight, prenatal care access, 
and socioeconomic indicators like income levels and employment rates, this project seeks to 
pinpoint areas where support is most needed. The goal is to guide interventions to help 
develop targeted support programs that improve maternal care and pregnancy outcomes in 
underserved communities, ensuring healthier pregnancies and stronger maternal health 
services.
This project serves as a foundational step toward developing a business aimed at providing 
holistic and tailored support services to pregnant women, ensuring that they receive the 
necessary care and assistance to foster healthier pregnancies and, by extension, healthier 
communities.
These are the key areas that provide insights and recommendations:

### Project Focus:
- **Maternal Health Metrics Analysis:**
  Examination of factors influencing pregnancy outcomes like maternal pre-pregnancy BMI, average birth weight, and access to prenatal care. Identifying health and trends like low birth weight helps target regions needing improved healthcare services and maternal support
- **Health and Socioeconomic Correlations:**
  Examining how health metrics and socioeconomic conditions interact to affect birth outcomes. These correlations can provide insights into regions which may need improvements.
  
The goal is to guide interventions and develop targeted support programs that improve maternal care and outcomes in underserved communities.

---

## Executive Summary 

### Overview of findings
Findings reveals that maternal health outcomes, such as pre-pregnancy BMI and birth weight, 
are primarily influenced by gestational age and maternal age, with socioeconomic factors 
play a secondary role. While wealthier counties tend to have lower BMI levels, socioeconomic 
factors show only minor correlations with birth weight. Gestational age consistently emerges 
as the strongest determinant of birth weight. Prenatal care access also varies across counties, 
and while its influence on birth weight is moderate, improving healthcare infrastructure and 
education in lower-income areas is essential for better outcomes. Overall, gestational factors 
and healthcare access are key drivers of maternal and infant health, with economic 
conditions plays a supporting role. These insights can inform targeted strategies to enhance 
maternal health and improve birth outcomes.

Below is an Overview from the Excel Dashboard. Which can be fully accessed here

### 1. Maternal Health Metrics Analysis
**Overview:** The analysis reveals that maternal age, gestational age, and prenatal care are key 
factors affecting maternal health and birth outcomes. Older maternal age is linked to lower 
pre-pregnancy BMI, while longer gestational periods strongly correlate with higher birth 
weights. Although prenatal care weeks vary significantly across counties, their impact on 
birth weight is moderate but important. Overall, gestational age plays the most significant 
role in birth outcomes, while prenatal care access is crucial in supporting healthier 
pregnancies. These insights can inform targeted strategies to enhance maternal health and 
improve birth outcomes.
- Pre-Pregnancy BMI: In the counties analysed, 566 (98.6% of counties) have an average 
BMI above 25.0, indicating overweight, with none exceeding 30.0, which is classified as 
obesity. Sumter County, SC, has the highest average BMI at 29.4, nearing the obesity 
threshold, while the 8 counties left show normal BMI levels. Some of the key Factors that 
show a strong effect on the average BMI in a county were:
-- Average Age: There is a strong negative relationship between average age and BMI 
(r = -0.691). This means that in counties with older populations, the average BMI 
tends to be lower. In other words, older people generally have lower average BMI.

-- Gestational Age: Both OE and LMP (‘Obstetric-Estimation’ and ‘Last-MenstrualPeriod’) Gestational Age show moderate negative correlations with BMI (r = -0.423 
and r = -0.321, respectively). This suggests that a lower BMI has an effect for a 
mature pregnancy.


- Average Birth Weight: The Average Birth weight of a child is 3.27kg (7.22Lbs)
dropping by -0.16% between 2018 and 2016. Whatcom, WA, has the highest average 
birth weight, at 4.3% above the national average, while Hinds, MS, has the lowest, 7.2% 
below the average. Some of the key Factors that show a strong effect on the average 
Birth weight in a county were:

  -- Gestational Age: There is a strong correlation between gestational age and birth 
weight (r = -0.741 for OE and r = -0.711 for LMP). This means that babies born from 
longer pregnancies generally weigh more. Essentially, a longer pregnancy usually 
results in a heavier baby.

 --Average Age: The average maternal age has a moderate negative correlation with 
birth weight (r = -0.374). This suggests that in counties with older average maternal 
age, the average birth weight tends to be slightly lower.
  -- BMI: The correlation between BMI and birth weight is relatively weak (r = -0.224). 
This indicates that while there is some link between a mother’s BMI and her baby’s 
birth weight, it is less significant than other factors like gestational age.

![Maternal Health Metrics](https://example.com/maternal_health_metrics_image)

### 2. Health and Socioeconomic Correlations
This section explores how health metrics correlate with socioeconomic conditions.

![Health and Socioeconomic Correlations](https://example.com/socioeconomic_correlations_image)

Key Findings:
- **BMI and Income**: Counties with higher income levels tend to have lower BMI (e.g., Sumter County, SC has one of the highest BMI averages).
- **Birth Weight and Gestational Age**: A strong correlation between gestational age and birth weight was found (r = 0.74), indicating longer pregnancies result in heavier babies.
- **Prenatal Care and Socioeconomic Status**: Prenatal care access shows a weak correlation with income, meaning that healthcare access is a more significant driver of prenatal care weeks.

### 3. Recommendations

Based on the analysis, the following recommendations are proposed:

- **BMI Management Programs**: Target counties with high average BMI (like Sumter County, SC) with fitness and nutrition programs to help lower BMI and reduce pregnancy-related risks.
- **Health Interventions for Younger Mothers**: Counties with younger maternal populations can benefit from tailored health programs focusing on BMI and prenatal care.
- **Prenatal Care Awareness Campaigns**: Increase awareness and access to prenatal care in counties with low birth weight (e.g., Hinds County, MS, and Bibb County, GA).
- **Partnership with Healthcare Providers**: Collaborate with local healthcare providers to offer prenatal workshops and community health events, creating referral programs that improve access to care.
- **Monitoring System**: Implement a feedback system to track the success of these interventions and adjust as necessary based on ongoing data analysis.

---

## Data Structure

The analysis uses a merged dataset from two tables: `county_natality.csv` and `FIPS_socioeconomic.csv`, resulting in the final table `Merged_Natality_FIPS.csv` with 1,722 rows. This table was used for both SQL and Excel analysis.

![Data Structure](https://example.com/data_structure_image)

### SQL Queries:
- Data extraction and loading: [SQL File](https://github.com/John00Davies/county-lvl-natality-analysis/blob/main/1.%20SQL%20files%20(Cleaning%20and%20EDA)/0.%20Loading%20Data%20Tables.sql)
- Data cleaning and inspection: [SQL File](https://github.com/John00Davies/county-lvl-natality-analysis/blob/main/1.%20SQL%20files%20(Cleaning%20and%20EDA)/1.%20Initial%20Data%20Checking%20and%20Cleaning.sql)
- Merging and formatting: [SQL File](https://github.com/John00Davies/county-lvl-natality-analysis/blob/main/1.%20SQL%20files%20(Cleaning%20and%20EDA)/2.%20Data%20Merge%20and%20Formatting.sql)

---

## Project Resources

- **CSV Files**: [Link to CSV files](https://github.com/John00Davies/county-lvl-natality-analysis/tree/main/0.%20CSV%20files)
- **Excel Dashboard**: [Link to Excel dashboard and analysis](https://github.com/John00Davies/county-lvl-natality-analysis/blob/main/2.%20Excel%20File%20(Dashboard%20and%20Analysis)/Dashboard%20and%20Further%20Analysis.xlsx)
- **Executive Summary PDF**: [Link to PDF file](https://github.com/John00Davies/county-lvl-natality-analysis/tree/main/3.%20Executive%20Summary%20Pdf%20file)

---

## Conclusion

This analysis highlights the importance of maternal health factors like BMI and gestational age, as well as the role of socioeconomic conditions in shaping maternal and infant outcomes. By implementing targeted interventions and improving healthcare access, especially in underserved regions, it is possible to significantly improve pregnancy outcomes.

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE.md) file for details.
