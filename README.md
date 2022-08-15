
<!-- README.md is generated from README.Rmd. Please edit that file -->

# oneclust <img src="man/figures/logo.png" align="right" width="120" />

<!-- badges: start -->

[![R-CMD-check](https://github.com/nanxstats/oneclust/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/nanxstats/oneclust/actions/workflows/R-CMD-check.yaml)
[![CRAN
Version](https://www.r-pkg.org/badges/version/oneclust)](https://cran.r-project.org/package=oneclust)
[![Downloads from the RStudio CRAN
mirror](https://cranlogs.r-pkg.org/badges/oneclust)](https://cran.r-project.org/package=oneclust)
<!-- badges: end -->

Implements the maximum homogeneity clustering algorithm for
one-dimensional data described in W. D. Fisher (1958)
\<[doi:10.1080/01621459.1958.10501479](https://www.tandfonline.com/doi/abs/10.1080/01621459.1958.10501479)\>
via dynamic programming.

Check `vignette("oneclust")` for its applications in feature
engineering, regression modeling, and peak calling.

## Installation

You can install oneclust from CRAN:

``` r
install.packages("oneclust")
```

Or try the development version from GitHub:

``` r
remotes::install_github("nanxstats/oneclust")
```

## Gallery

### Feature engineering for high-cardinality categorical features

<img src="man/figures/README-high-cardinality-1.png" width="100%" />

### Grouping coefficients in regression models

<img src="man/figures/README-coefficients-1.png" width="100%" />

### Sequential data peak calling and segmentation

<img src="man/figures/README-peak-calling-1.png" width="100%" />

## License

oneclust is free and open source software, licensed under GPL-3.
