# Operating Characteristics Simulation Workflow

Welcome! This repository provides a reproducible R pipeline for comparing the operating characteristics of various scenarios.

> **Note on Study Design:** All sample size calculations and power curves in this workflow assume a **one-sided hypothesis test**.

### How to Run

1. **Restore dependencies:** `renv::restore()`
2. **Execute pipeline:** `targets::tar_make()`
3. **View result:** `targets::tar_read(figure)`

### Reproducibility Notes
* R package versions are locked via `renv.lock`.
* Pipeline execution is managed via `{targets}`.