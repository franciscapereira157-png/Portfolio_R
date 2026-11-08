
library(targets)

tar_option_set(
  packages = c("tidyr", "dplyr", "ggplot2")
)

tar_source()

list(
  tar_target(
    name = scenarios_df,
    command = scenarios(sd = sd, alpha = alpha, power = power, delta = delta)
  ),
  tar_target(
    name = operating_characteristics,
    command = computation(scenarios_df)
  ),
  tar_target(
    name = figure,
    command = plot_df(operating_characteristics)
  )
)
