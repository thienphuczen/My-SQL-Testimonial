-- Q1: Total milk production for 2023
SELECT SUM(Value) AS total_milk_2023
FROM milk_production
WHERE Year = 2023;

-- Q2: States with cheese > 100M in April 2023 (count)
SELECT COUNT(*) AS states_over_100m
FROM (
  SELECT State_ANSI, SUM(Value) AS total_cheese
  FROM cheese_production
  WHERE Year = 2023 AND Period = 'APR'
  GROUP BY State_ANSI
  HAVING total_cheese > 100000000
) t;

-- Q3: Total coffee production in 2011
SELECT SUM(Value) AS total_coffee_2011
FROM coffee_production
WHERE Year = 2011;

-- Q4: Average honey production in 2022
SELECT AVG(Value) AS avg_honey_2022
FROM honey_production
WHERE Year = 2022;

-- Q5: ANSI code for Florida
SELECT State_ANSI
FROM state_lookup
WHERE State = 'FLORIDA';

-- Q6: New Jersey cheese total in April 2023
SELECT COALESCE(SUM(Value), 0) AS cheese_apr2023_NJ
FROM cheese_production
WHERE Year = 2023 AND Period = 'APR'
  AND State_ANSI = (SELECT State_ANSI FROM state_lookup WHERE State = 'NEW JERSEY');

-- Q7: Yogurt 2022 total for states that have cheese data in 2023
SELECT SUM(y.Value) AS total_yogurt_2022
FROM yogurt_production y
WHERE y.Year = 2022
  AND y.State_ANSI IN (
    SELECT DISTINCT c.State_ANSI
    FROM cheese_production c
    WHERE c.Year = 2023
  );

-- Q8: Count states missing milk data in 2023
SELECT COUNT(*) AS missing_states_count
FROM state_lookup s
WHERE s.State_ANSI NOT IN (
  SELECT DISTINCT m.State_ANSI FROM milk_production m WHERE m.Year = 2023
);

-- Q9: Delaware produced cheese in April 2023? (total; 0 means none)
SELECT COALESCE(SUM(Value), 0) AS cheese_apr2023_DE
FROM cheese_production
WHERE Year = 2023 AND Period = 'APR'
  AND State_ANSI = (SELECT State_ANSI FROM state_lookup WHERE State = 'DELAWARE');

-- Q10: Average coffee production for years where total honey > 1,000,000
SELECT AVG(c.Value) AS avg_coffee_for_honey_years_gt_1m
FROM coffee_production c
WHERE c.Year IN (
  SELECT h.Year
  FROM honey_production h
  GROUP BY h.Year
  HAVING SUM(h.Value) > 1000000
);
