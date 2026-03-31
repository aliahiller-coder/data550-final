here::i_am('code/02_Figure1.R')

data <- readRDS(
  file = here::here("output/clean_data.rds")
)

library(ggplot2)

figure1 <- ggplot(data, aes(x=SLD012, y=LBXVIDMS)) +
  geom_boxplot() +
  labs(
    title = 'Hours of Sleep and Vitamin D Levels',
    x = 'Hours of Sleep' , y = 'Vitamin D Levels (nmol/L)'
  )

ggsave("output/figure1.png")
