library(ggplot2)

plot_df <- function(df) {
  ggplot(
    data = df,
    aes(x = power, y = sample_size)) +
  geom_line() +
  geom_point() +
  theme_minimal()
}
    