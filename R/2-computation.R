library(dplyr)

# Sample Size computation function ----------------------------------------
#takes a data frame with the different scenarios and computes sample size for each
#one sided 

computation <- function(df) {
  df <- df |> mutate(
    beta = 1 - power,
    z = round(qnorm(1-alpha),3),
    z_b = round(qnorm(1-beta),3),
    sample_size_per_group = round(((z+z_b)^2*2*sd^2)/delta^2, 3),
    sample_size = 2 * sample_size_per_group
  )
  return(df)
}
