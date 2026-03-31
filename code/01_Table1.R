here::i_am('code/01_Table1.R')

data <- readRDS(
  file = here::here("output/clean_data.rds")
)

library(labelled)
library(gtsummary)

var_label(data) <- list(
  RIDAGEYR = 'Age',
  RIAGENDR = 'Gender',
  RIDRETH3 = 'Race/Ethnicity',
  SLD012 = 'Sleep Hours',
  LBXVIDMS = 'Vitamin D Level (nmol/L)'
)

table1 <- data %>% 
  select(RIDAGEYR, RIAGENDR, RIDRETH3, SLD012, LBXVIDMS) %>% 
  tbl_summary



saveRDS(
  table1,
  file = here::here("output/table1.rds")
)
