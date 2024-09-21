-- GETTING DIMENSION OF TABLE - county_natality
-- 10 columns by 1,878 rows
SELECT
  COUNT(*) AS NumberOfColumns
FROM `gothic-parsec-433910-i4.Nlty_Anlys.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'county_natality';

SELECT
  COUNT(*) AS NumberOfRows
FROM `gothic-parsec-433910-i4.Nlty_Anlys.county_natality`;

--CHECKING NULL VALUES - county_natality
--No null values were detected
SELECT
  SUM(CASE WHEN Year IS NULL THEN 1 ELSE 0 END) AS Year_null_count,
  SUM(CASE WHEN County_of_Residence IS NULL THEN 1 ELSE 0 END) AS County_of_Residence_null_count,
  SUM(CASE WHEN County_of_Residence_FIPS IS NULL THEN 1 ELSE 0 END) AS County_of_Residence_FIPS_null_count,
  SUM(CASE WHEN Births IS NULL THEN 1 ELSE 0 END) AS Births_null_count,
  SUM(CASE WHEN Ave_Age_of_Mother IS NULL THEN 1 ELSE 0 END) AS Ave_Age_of_Mother_null_count,
  SUM(CASE WHEN Ave_OE_Gestational_Age_Wks IS NULL THEN 1 ELSE 0 END) AS Ave_OE_Gestational_Age_Wks_null_count,
  SUM(CASE WHEN Ave_LMP_Gestational_Age_Wks IS NULL THEN 1 ELSE 0 END) AS Ave_LMP_Gestational_Age_Wks_null_count,
  SUM(CASE WHEN Ave_Birth_Weight_gms IS NULL THEN 1 ELSE 0 END) AS Ave_Birth_Weight_gms_null_count,
  SUM(CASE WHEN Ave_Pre_pregnancy_BMI IS NULL THEN 1 ELSE 0 END) AS Ave_Pre_pregnancy_BMI_null_count,
  SUM(CASE WHEN Ave_Number_of_Prenatal_Wks IS NULL THEN 1 ELSE 0 END) AS Ave_Number_of_Prenatal_Wks_null_count
FROM `gothic-parsec-433910-i4.Nlty_Anlys.county_natality`;

--CHECKING DUPLICATES - county_natality
--Duplicate County of Residence Names
--No duplicate values were found
SELECT
  Year,
  County_of_Residence,
  COUNT(County_of_Residence) AS counts
FROM `gothic-parsec-433910-i4.Nlty_Anlys.county_natality`
GROUP BY Year, County_of_Residence
HAVING counts > 1;


--DISTINCT COUNTY OF RESIDENCE NAMES ACROSS EACH YEAR - county_natality
--Number of county across each year is 626
SELECT
    Year, COUNT(DISTINCT County_of_Residence)
  FROM
    `gothic-parsec-433910-i4.Nlty_Anlys.county_natality`
GROUP BY Year;


--RANGES OF VALUES - county_natality
-- YEAR: 2016-01-01 to 2018-01-01
SELECT MIN(Year), MAX(Year)
FROM
  `gothic-parsec-433910-i4.Nlty_Anlys.county_natality`;

-- BIRTHS: 735 - 123092
SELECT MIN(Births), MAX(Births)
FROM
  `gothic-parsec-433910-i4.Nlty_Anlys.county_natality`;

-- Average age of Mother: 26.02 - 33.34 years
SELECT MIN(Ave_Age_of_Mother), MAX(Ave_Age_of_Mother)
FROM
  `gothic-parsec-433910-i4.Nlty_Anlys.county_natality`;

-- Obsetric Estimation Gestational Age: 37.66 - 39.09 Weeks
SELECT MIN(Ave_OE_Gestational_Age_Wks), MAX(Ave_OE_Gestational_Age_Wks)
FROM
  `gothic-parsec-433910-i4.Nlty_Anlys.county_natality`;

--Last Menstrual Period Gestational Age: 35.5 - 39.3 Weeks
SELECT MIN(Ave_LMP_Gestational_Age_Wks), MAX(Ave_LMP_Gestational_Age_Wks)
FROM
  `gothic-parsec-433910-i4.Nlty_Anlys.county_natality`;

--Average Infant Birth Weight: 3031.87 - 3427.22 grams
SELECT MIN(Ave_Birth_Weight_gms), MAX(Ave_Birth_Weight_gms)
FROM
  `gothic-parsec-433910-i4.Nlty_Anlys.county_natality`;

-- Average Prepregnancy BMI: 23.75 - 29.56
SELECT MIN(Ave_Pre_pregnancy_BMI), MAX(Ave_Pre_pregnancy_BMI)
FROM
  `gothic-parsec-433910-i4.Nlty_Anlys.county_natality`;

-- Average Number of Prenatal Care Visits: 8.71 - 15.95 Weeks
SELECT MIN(Ave_Number_of_Prenatal_Wks), MAX(Ave_Number_of_Prenatal_Wks)
FROM
  `gothic-parsec-433910-i4.Nlty_Anlys.county_natality`;



--======================================================-


-- GETTING DIMENSION OF TABLE - FIPS_socioeconomic
-- 9 columns by 22,386 rows
SELECT
  COUNT(*) AS NumberOfColumns
FROM `gothic-parsec-433910-i4.Nlty_Anlys.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'FIPS_socioeconomic';

SELECT
  COUNT(*) AS NumberOfRows
FROM `gothic-parsec-433910-i4.Nlty_Anlys.FIPS_socioeconomic`;

--RANGES OF VALUES - FIPS_socioeconomic

--Year: 2012-01-01 - 2018-01-01
SELECT MIN(Year), MAX(Year)
FROM
  `gothic-parsec-433910-i4.Nlty_Anlys.FIPS_socioeconomic`;

--Net Earnings by Place of Residence : -562 - 11159450000 dollars
SELECT MIN(Net_earnings_by_place_of_residence), MAX(Net_earnings_by_place_of_residence)
FROM
  `gothic-parsec-433910-i4.Nlty_Anlys.FIPS_socioeconomic`;

--Percapita Personal Income: 10996 - 251728 dollars
SELECT MIN(Percapita_personal_income), MAX(Percapita_personal_income)
FROM
  `gothic-parsec-433910-i4.Nlty_Anlys.FIPS_socioeconomic`;

-- Population: 86 - 327167434
SELECT MIN(Population), MAX(Population)
FROM
  `gothic-parsec-433910-i4.Nlty_Anlys.FIPS_socioeconomic`;

-- Wage and Salary Employement: 38 - 154375000 jobs
SELECT MIN(Wage_and_salary_employment), MAX(Wage_and_salary_employment)
FROM
  `gothic-parsec-433910-i4.Nlty_Anlys.FIPS_socioeconomic`;

-- Average Earnings per Job: -7960 - 140631 dollars
SELECT MIN(Earnings_per_job_avg), MAX(Earnings_per_job_avg)
FROM
  `gothic-parsec-433910-i4.Nlty_Anlys.FIPS_socioeconomic`;

--Personal Income: 2404 - 17813035000 dollars
SELECT MIN(Personal_income), MAX(Personal_income)
FROM
  `gothic-parsec-433910-i4.Nlty_Anlys.FIPS_socioeconomic`;

--Total Employement: 68 - 200746000 jobs
SELECT MIN(Total_employment), MAX(Total_employment)
FROM
  `gothic-parsec-433910-i4.Nlty_Anlys.FIPS_socioeconomic`;
