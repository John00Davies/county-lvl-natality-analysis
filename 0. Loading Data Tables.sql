--CREATING county_natality TABLE IN PROJECT
CREATE TABLE `gothic-parsec-433910-i4.Nlty_Anlys.county_natality`
AS
SELECT *
FROM `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality`;

--CREATING FIPS_socioeconomic TABLE IN PROJECT
CREATE TABLE `gothic-parsec-433910-i4.Nlty_Anlys.FIPS_socioeconomic`
AS
SELECT Year, GeoFIPS, Net_earnings_by_place_of_residence, Percapita_personal_income, Population, Wage_and_salary_employment, Earnings_per_job_avg, Personal_income, Total_employment
FROM `bigquery-public-data.sdoh_bea_cainc30.fips`;


