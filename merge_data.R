packages <- c("dplyr", "readr")

library(dplyr)
library(readr)

edu <- read_csv("education.csv")
unemp <- read_csv("unemployment_rate.csv")
income <- read_csv("median_income.csv")

merged <- edu %>%
  left_join(unemp, by = c("state", "year")) %>%
  left_join(income, by = c("state", "year"))

print(head(merged))
summary(merged)

write_csv(merged, "education_unemployment_2010_2014.csv")
save(merged, file = "cleaned_data.Rda")
