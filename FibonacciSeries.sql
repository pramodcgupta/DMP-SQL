-- ===============================================================================
-- Problem Statement: Write a SQL query to print fibonacci Series
--
-- The Fibonacci numbers are the numbers in the following integer sequence.
-- Output: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ……..
-- 
-- Approach: Formula for nth term in the fibonacci series. 
-- Fn = {[(√5 + 1)/2] ^ n} / √5 
-- ===============================================================================

select number nth_Term, ROUND(POWER((SQRT(5) + 1) / 2.0, number) / SQRT(5),0) Fibonacci_Series 
FROM master..spt_values
where TYPE = 'p' AND number BETWEEN 0 AND 20