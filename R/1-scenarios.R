library(tidyr)


# Setting the scenarios ---------------------------------------------------

sd <- 1                        # standard deviation
alpha <- 0.05                  # type I error rate
power <- c(0.2, 0.4, 0.6, 0.8)  # 1 - beta  (beta = type II error rate)
delta <- 0.2                   #effect size

scenarios <- function(sd,
                      alpha,
                      power,
                      delta) {
  tidyr::expand_grid(
    sd,
    alpha,
    power,
    delta
)}