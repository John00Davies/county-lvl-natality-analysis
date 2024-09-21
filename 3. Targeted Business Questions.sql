
--IN WHICH COUNTIES DO PREGNANT WOMEN RECIEVE FEWER PRENATAL CARE VISITS ON AVERAGE, Suggesting a need for increased prenatal care services?

----Nueces County, TX sees the lowest prenatal visits at 8.92
SELECT 
  County_of_Residence,
  AVG(Ave_Number_of_Prenatal_Wks) as avg_prenatal_visits
FROM `gothic-parsec-433910-i4.Nlty_Anlys.Merged_Natality_FIPS` 
GROUP BY County_of_Residence
ORDER BY avg_prenatal_visits ASC
LIMIT 20;

--WHICH COUNTIES HAVE THE LOWEST AVERAGE BIRTH WEIGHT, highlighting areas where additional support for maternal health and infant care is needed?

----Hinds County, MS at the lowest with 3039.53, followed closely by Bibb County, GA & Caddo Parish, LA
SELECT 
  County_of_Residence,
  AVG(Ave_Birth_Weight_gms) as avg_birth_weight
FROM `gothic-parsec-433910-i4.Nlty_Anlys.Merged_Natality_FIPS` 
GROUP BY County_of_Residence
ORDER BY avg_birth_weight ASC
LIMIT 20;

--WHICH COUNTIES HAVE THE HIGHEST AVERAGE PRE-PREGNANCY BMI IN 2018 AND ALL-TIME, indicating a potential need for targeted maternak services?

/* 2018 */
----Last year(2018) Oswego County, NY had the highest average BMI at 29.51
SELECT 
  County_of_Residence,
  AVG(Ave_Pre_pregnancy_BMI) as Average_pre_preg_BMI
FROM `gothic-parsec-433910-i4.Nlty_Anlys.Merged_Natality_FIPS` 
WHERE Year = 2018
GROUP BY County_of_Residence
ORDER BY Average_pre_preg_BMI DESC
LIMIT 20;

/* ALL-TIME */
---- Sumter County, SC has the highest average BMI at 29.35 across the years
SELECT 
  County_of_Residence,
  AVG(Ave_Pre_pregnancy_BMI) as Average_pre_preg_BMI
FROM `gothic-parsec-433910-i4.Nlty_Anlys.Merged_Natality_FIPS` 
GROUP BY County_of_Residence
ORDER BY Average_pre_preg_BMI DESC
LIMIT 20;

--ARE THERE COUNTIES WITH HIGH BIRTH NUMBERS BUT LOWER MATERNAL HEALTH INDICATORS(eg. higher average BMI or fewer prenatal visits), suggesting a greater overall need for maternal health services?

----Harris County, TX has a relatively low prenatal visits at 9 and a high(overweight BMI) at 27.01 with a total birth count of 207,937
SELECT 
  County_of_Residence,
  SUM(Births) AS total_births,
  AVG(Ave_Pre_pregnancy_BMI) as avg_pre_preg_BMI,
  AVG(Ave_Number_of_Prenatal_Wks) as avg_prenatal_visits
FROM `gothic-parsec-433910-i4.Nlty_Anlys.Merged_Natality_FIPS` 
GROUP BY County_of_Residence
ORDER BY  total_births DESC, avg_pre_preg_BMI DESC, avg_prenatal_visits ASC
LIMIT 20;

--ARE THERE COUNTIES WITH LOW AVERAGE BIRTH WEIGHTS THAT ALSO HAVE LOW PERCAPITA INCOME OR HIGH UNEMPLOYMENT RATES, linking if economic disadvantage can affect birth outcomes?
SELECT 
  County_of_Residence,
  AVG(Ave_Birth_Weight_gms) AS avg_birth_weight,
  AVG(Percapita_personal_income) as avg_per_capita_income,
  AVG(Wage_and_salary_employment/Population) as avg_employement_rate
FROM `gothic-parsec-433910-i4.Nlty_Anlys.Merged_Natality_FIPS` 
GROUP BY County_of_Residence
ORDER BY  avg_birth_weight ASC, avg_per_capita_income ASC, avg_employement_rate ASC
LIMIT 20;

--HOW DOES THE AVERAGE GESTATIONAL AGE VARY BY INCOME LEVELS AND EMPLOYMENT RATES?
SELECT 
  County_of_Residence,
  AVG(Ave_OE_Gestational_Age_Wks) as avg_oe_age,
  AVG(Ave_LMP_Gestational_Age_Wks) as avg_lmp_age,
  AVG(Percapita_personal_income) as avg_per_capita_income,
  AVG(Wage_and_salary_employment/Population) as avg_employement_rate
FROM `gothic-parsec-433910-i4.Nlty_Anlys.Merged_Natality_FIPS` 
GROUP BY County_of_Residence
/*ORDER BY avg_per_capita_income ASC, avg_employement_rate ASC
LIMIT 20*/


--WHICH COUNTIES HAVE THE HIGHEST AVERAGE PRE-PREGNANCY BMI IN 2018 AND ALL-TIME, indicating a potential need for targeted maternak services?

/* 2018 */
----Last year(2018) Oswego County, NY had the highest average BMI at 29.51
SELECT 
  County_of_Residence,
  AVG(Ave_Pre_pregnancy_BMI) as Average_pre_preg_BMI
FROM `gothic-parsec-433910-i4.Nlty_Anlys.Merged_Natality_FIPS` 
WHERE Year = 2018
GROUP BY County_of_Residence
ORDER BY Average_pre_preg_BMI DESC
LIMIT 20;

/* ALL-TIME */
---- Sumter County, SC has the highest average BMI at 29.35 across the years
SELECT 
  County_of_Residence,
  AVG(Ave_Pre_pregnancy_BMI) as Average_pre_preg_BMI
FROM `gothic-parsec-433910-i4.Nlty_Anlys.Merged_Natality_FIPS` 
GROUP BY County_of_Residence
ORDER BY Average_pre_preg_BMI DESC
LIMIT 20;

--IN WHICH COUNTIES DO PREGNANT WOMEN RECIEVE FEWER PRENATAL CARE VISITS ON AVERAGE, Suggesting a need for increased prenatal care services?

----Nueces County, TX sees the lowest prenatal visits at 8.92
SELECT 
  County_of_Residence,
  AVG(Ave_Number_of_Prenatal_Wks) as avg_prenatal_visits
FROM `gothic-parsec-433910-i4.Nlty_Anlys.Merged_Natality_FIPS` 
GROUP BY County_of_Residence
ORDER BY avg_prenatal_visits ASC
LIMIT 20;

--WHICH COUNTIES HAVE THE LOWEST AVERAGE BIRTH WEIGHT, highlighting areas where additional support for maternal health and infant care is needed?

----Hinds County, MS at the lowest with 3039.53, followed closely by Bibb County, GA & Caddo Parish, LA
SELECT 
  County_of_Residence,
  AVG(Ave_Birth_Weight_gms) as avg_birth_weight
FROM `gothic-parsec-433910-i4.Nlty_Anlys.Merged_Natality_FIPS` 
GROUP BY County_of_Residence
ORDER BY avg_birth_weight ASC
LIMIT 20;

--ARE THERE COUNTIES WITH HIGH BIRTH NUMBERS BUT LOWER MATERNAL HEALTH INDICATORS(eg. higher average BMI or fewer prenatal visits), suggesting a greater overall need for maternal health services?

----Harris County, TX has a relatively low prenatal visits at 9 and a high(overweight BMI) at 27.01 with a total birth count of 207,937
SELECT 
  County_of_Residence,
  SUM(Births) AS total_births,
  AVG(Ave_Pre_pregnancy_BMI) as avg_pre_preg_BMI,
  AVG(Ave_Number_of_Prenatal_Wks) as avg_prenatal_visits
FROM `gothic-parsec-433910-i4.Nlty_Anlys.Merged_Natality_FIPS` 
GROUP BY County_of_Residence
ORDER BY  total_births DESC, avg_pre_preg_BMI DESC, avg_prenatal_visits ASC
LIMIT 20;

--ARE THERE COUNTIES WITH LOW AVERAGE BIRTH WEIGHTS THAT ALSO HAVE LOW PERCAPITA INCOME OR HIGH UNEMPLOYMENT RATES, linking if economic disadvantage can affect birth outcomes?
SELECT 
  County_of_Residence,
  AVG(Ave_Birth_Weight_gms) AS avg_birth_weight,
  AVG(Percapita_personal_income) as avg_per_capita_income,
  AVG(Wage_and_salary_employment/Population) as avg_employement_rate
FROM `gothic-parsec-433910-i4.Nlty_Anlys.Merged_Natality_FIPS` 
GROUP BY County_of_Residence
ORDER BY  avg_birth_weight ASC, avg_per_capita_income ASC, avg_employement_rate ASC
LIMIT 20;

--HOW DOES THE AVERAGE GESTATIONAL AGE VARY BY INCOME LEVELS AND EMPLOYMENT RATES?
SELECT 
  County_of_Residence,
  AVG(Ave_OE_Gestational_Age_Wks) as avg_oe_age,
  AVG(Ave_LMP_Gestational_Age_Wks) as avg_lmp_age,
  AVG(Percapita_personal_income) as avg_per_capita_income,
  AVG(Wage_and_salary_employment/Population) as avg_employement_rate
FROM `gothic-parsec-433910-i4.Nlty_Anlys.Merged_Natality_FIPS` 
GROUP BY County_of_Residence
/*ORDER BY avg_per_capita_income ASC, avg_employement_rate ASC
LIMIT 20*/


