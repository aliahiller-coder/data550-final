here::i_am('code/00_CleanData.R')

data <- read.csv('CleanData/nhanes_analysis.csv', header=TRUE)

#renaming observations for gender variable
data$RIAGENDR <- factor(data$RIAGENDR,
                         levels = c(1, 2),
                         labels = c("Male", "Female")
)

#renaming observations for race/ethnicity variable
data$RIDRETH3 <- factor(data$RIDRETH3,
                         levels = c(1, 2, 3, 4, 6, 7),
                         labels = c('Mexican American', 'Other Hispanic', 'White', 'Black', 'Asian', 'Other')
)

#making the sleep variable a factor
data$SLD012 <- factor(data$SLD012)

saveRDS(
  data,
  file = here::here("output/clean_data.rds")
)