-- CREATE A NEW TABLE Merged_Natality_FIPS FOR MAIN ANALYSIS
CREATE TABLE `gothic-parsec-433910-i4.Nlty_Anlys.Merged_Natality_FIPS`
AS
SELECT 
  EXTRACT(YEAR FROM cn.Year) AS Year,
  cn.County_of_Residence,
  cn.County_of_Residence_FIPS,
  cn.Births,
  cn.Ave_Age_of_Mother,
  cn.Ave_OE_Gestational_Age_Wks,
  cn.Ave_LMP_Gestational_Age_Wks,
  cn.Ave_Birth_Weight_gms,
  cn.Ave_Pre_pregnancy_BMI,
  cn.Ave_Number_of_Prenatal_Wks,
  fps.Net_earnings_by_place_of_residence,
  fps.Percapita_personal_income,
  fps.Population, 
  fps.Wage_and_salary_employment, 
  fps.Earnings_per_job_avg,
  fps.Personal_income, 
  fps.Total_employment
FROM
  `gothic-parsec-433910-i4.Nlty_Anlys.county_natality` AS cn
INNER JOIN `gothic-parsec-433910-i4.Nlty_Anlys.FIPS_socioeconomic` AS fps 
ON
cn.Year = fps.Year
AND
cn.County_of_Residence_FIPS = fps.GeoFIPS;

--TABLE STRUCTURE
-- 17 Columns by 1,722 Rows
SELECT
  COUNT(*) AS NumberOfColumns
FROM `gothic-parsec-433910-i4.Nlty_Anlys.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'Merged_Natality_FIPS';

SELECT
  COUNT(*) AS NumberOfRows
FROM `gothic-parsec-433910-i4.Nlty_Anlys.Merged_Natality_FIPS`;

--MISSING ROWS, there are 156 missing rows (county_natality - 1827 rows vs. Merged_Natality_FIPS - 1722 rows) after the joining, WHY?

---- These missing rows were as a result of NULL GeoFIPS values for 52 counties, 48 of which are unidentified counties.
WITH missing_values AS (
  SELECT
    cn.County_of_Residence as County_name,
    fps.GeoFIPS
  FROM
    `gothic-parsec-433910-i4.Nlty_Anlys.county_natality` AS cn
  LEFT  JOIN `gothic-parsec-433910-i4.Nlty_Anlys.FIPS_socioeconomic` AS fps 
  ON
  cn.Year = fps.Year
  AND
  cn.County_of_Residence_FIPS = fps.GeoFIPS
  WHERE fps.GeoFIPS IS NULL
)
/*SELECT
  COUNT(County_name)
FROM missing_values
WHERE County_name LIKE '%Unidentified%';*/

SELECT
  COUNT(DISTINCT County_name)
FROM missing_values
-- WHERE County_name NOT LIKE '%Unidentified%'
;

--VIEW TABLE
SELECT *
FROM `gothic-parsec-433910-i4.Nlty_Anlys.Merged_Natality_FIPS`;




