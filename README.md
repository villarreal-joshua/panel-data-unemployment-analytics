# Educational Attainment & Unemployment Panel Analysis

## Overview
This project examines the relationship between educational attainment and unemployment rates across U.S. states from 2010–2014 using panel data econometric methods.

The objective was to evaluate whether increases in bachelor’s degree attainment are associated with lower unemployment rates after controlling for income, state fixed effects, and year fixed effects.

## Data
- U.S. Census Bureau educational attainment data
- Bureau of Labor Statistics unemployment data
- U.S. Census Bureau median income data
- Panel structure: State × Year (2010–2014)

## Methodology
- Constructed a state-year panel dataset by merging multiple public datasets
- Applied log transformation to median income
- Estimated two-way fixed effects panel regression models
- Applied cluster-robust standard errors clustered at the state level
- Visualized longitudinal unemployment and education trends using ggplot2

## Key Findings
Higher educational attainment was associated with lower unemployment rates after controlling for income and fixed effects. Results remained statistically significant under clustered standard errors.

## Tools Used
- R
- plm
- dplyr
- ggplot2
- lmtest
- sandwich

## Repository Contents
- Data cleaning and merging scripts
- Panel regression analysis
- Cluster-robust inference
- Data visualizations
- Project write-up
