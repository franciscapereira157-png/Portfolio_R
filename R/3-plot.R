library(ggplot2)

plot_df <- function(df) {
  ggplot(
    data = df,
    aes(x = power, 
        y = sample_size,
        colour = factor(delta),
        group = factor(delta))) +
  geom_line() +
  geom_point() +
  labs(color = delta)
  theme_minimal()
}
plot_df <- function(df) {
  ggplot(
    data = df,
    aes(
      x = power, 
      y = sample_size, 
      color = factor(delta), 
      group = factor(delta)
    )
  ) +
    geom_line() +
    geom_point() +
    labs(x = "Power",
         y = "Sample Size",
         color = "Delta") +
    theme_minimal()
}    