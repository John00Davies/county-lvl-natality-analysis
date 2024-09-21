# Socioeconomic and Health Determinants of Maternal Outcomes: A County-Level Analysis for Pregnancy Support Services

## Background and Objectives

Maternal health is a critical factor influencing both maternal and newborn well-being. Disparities in healthcare access, socioeconomic resources, and support services can significantly affect pregnancy outcomes across different regions. This project identifies counties where pregnant women face higher risks due to poor maternal health, limited prenatal care, and economic hardships.

### Project Focus:
- **Pre-pregnancy BMI**
- **Average birth weight**
- **Access to prenatal care**
- **Socioeconomic indicators (income levels, employment rates)**

The goal is to guide interventions and develop targeted support programs that improve maternal care and outcomes in underserved communities.

---

## Key Areas of Analysis

### 1. Maternal Health Metrics Analysis
This section examines factors such as maternal pre-pregnancy BMI, birth weight, and prenatal care access, identifying health trends like low birth weight and highlighting regions requiring enhanced healthcare services.

![Maternal Health Metrics](https://example.com/maternal_health_metrics_image)

Key Findings:
- **Pre-Pregnancy BMI**: 98.6% of counties analyzed have an average BMI above 25, with Sumter County, SC having the highest (29.4), nearing the obesity threshold.
- **Average Birth Weight**: The national average is 3.27kg. Whatcom, WA has the highest, while Hinds, MS has the lowest.
- **Prenatal Visits**: On average, mothers receive 11.4 weeks of prenatal care, though there is significant variation across counties.

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
