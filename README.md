# WID.BC package

Easy calculation of the WID-BC-index (Barrett J., Herzog C., et al., 2021).

**Please note: this code is available for research use only. Commercial use of the code or any data related to it is prohibited.**

THE WID_BC function uses a methylation beta matrix and returns the WID-BC-index.


# Requirements

R version 4.0.2 (2020-06-22) or higher; tested for R 4.0.2 only.

# Installation

Installation can happen directly via Github devtools and takes less than 5 seconds:

```
if(!require(devtools)) install.packages("devtools")
devtools::install_github("chiaraherzog/WID.BC")
```

# Demo data

A demo dataset is included in the Vignette.

# Example use

Use this data on your quality-controlled and normalised data as follows:

```
index <- WID_BC(beta_matrix)
```


