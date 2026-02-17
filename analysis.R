packages <- c("plm", "lmtest", "sandwich", "ggplot2")
library(plm)
library(lmtest)
library(sandwich)
library(ggplot2)

load("cleaned_data.Rda")

df <- merged

df$log_median_income <- log(df$median_income)

pdata <- pdata.frame(df, index = c("state", "year"))

model <- plm(
  unemployment_rate ~ bachelor_degree_or_higher_percent + log_median_income,
  data = pdata, model = "within", effect = "twoways"
)

cl_se <- vcovHC(model, type = "HC1", cluster = "group")
summary <- coeftest(model, vcov = cl_se)
print(summary)

library(dplyr)
avg <- df %>%
  group_by(year) %>%
  summarize(avg_unemp = mean(unemployment_rate),
            avg_edu = mean(bachelor_degree_or_higher_percent))

ggplot(avg, aes(x = year)) +
  geom_line(aes(y = avg_unemp, color = "Unemployment Rate")) +
  geom_line(aes(y = avg_edu, color = "Bachelor's Degree (%)")) +
  labs(title = "Average Unemployment Rate and Education Level (2010–2014)",
       y = "Value", color = "Variable") +
  theme_minimal()

