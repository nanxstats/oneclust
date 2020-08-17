# oneclust

[![Travis build status](https://travis-ci.org/nanxstats/oneclust.svg?branch=master)](https://travis-ci.org/nanxstats/oneclust)
[![AppVeyor build status](https://ci.appveyor.com/api/projects/status/github/nanxstats/oneclust?branch=master&svg=true)](https://ci.appveyor.com/project/nanxstats/oneclust)
[![CRAN Version](https://www.r-pkg.org/badges/version/oneclust)](https://cran.r-project.org/package=oneclust)
[![Downloads from the RStudio CRAN mirror](https://cranlogs.r-pkg.org/badges/oneclust)](https://cran.r-project.org/package=oneclust)

Implements the maximum homogeneity clustering algorithm for one-dimensional data described in W. D. Fisher (1958) <[doi:10.1080/01621459.1958.10501479](https://www.tandfonline.com/doi/abs/10.1080/01621459.1958.10501479)> via dynamic programming.

Check the [vignette](https://nanx.me/oneclust/articles/oneclust.html) for its applications in feature engineering, regression modeling, and peak calling.

## Install

From CRAN:

```r
install.packages("oneclust")
```

From GitHub:

```r
remotes::install_github("nanxstats/oneclust")
```

## Gallery

### Feature engineering for high-cardinality categorical features

![](https://i.imgur.com/OTu0UcN.png)

### Grouping coefficients in regression models

![](https://i.imgur.com/WF3brnU.png)

### Sequential data peak calling and segmentation

![](https://i.imgur.com/dooQh0m.png)

## License

oneclust is free and open source software, licensed under GPL-3.
