Welcome to my repository :)

Here I have a reproducible R workflow which creates a plot comparing operating characteristics of different scenarios

That includes a {targets} pipeline with a seed defined for reproducibility.

And a {renv} file for reproducibility.

Use renv::restore() and then run targets::tar_make() and then targets::tar_read(figure)