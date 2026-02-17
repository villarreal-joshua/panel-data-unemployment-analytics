# Educational Attainment & Unemployment Panel Analysis

## Overview
This project examines the relationship between educational attainment and unemployment rates across U.S. states from 2010–2014 using panel data methods.

The objective was to determine whether higher proportions of bachelor's degree attainment are associated with lower unemployment rates after controlling for income and unobserved state and time effects.

## Data
- U.S. Census education data
- Bureau of Labor Statistics unemployment data
- Median income data
- Panel structure: State × Year (2010–2014)

## Methodology
- Constructed state-year panel dataset by merging multiple public datasets
- Log-transformed median income to address scale effects
- Estimated a two-way fixed effects model (state and year)
- Applied cluster-robust standard errors (clustered at state level)

## Key Findings
Higher bachelor’s degree attainment was associated with lower unemployment rates after controlling for income and fixed effects. Results were robust to clustered standard errors.

## Tools Used
- R
- plm
- dplyr
- ggplot2
- lmtest
- sandwich
