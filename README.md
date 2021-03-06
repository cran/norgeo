# norgeo <img src='man/figures/logo.png' align="right" width="120" height="139" />

[![R build
status](https://github.com/helseprofil/norgeo/workflows/R-CMD-check/badge.svg)](https://github.com/helseprofil/norgeo/actions)
[![](https://codecov.io/gh/helseprofil/norgeo/branch/master/graph/badge.svg)](https://app.codecov.io/gh/helseprofil/norgeo)
[![](https://www.r-pkg.org/badges/version/norgeo?color=green)](https://cran.r-project.org/package=norgeo)
[![](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://lifecycle.r-lib.org/articles/stages.html#maturing)
[![](https://img.shields.io/badge/devel%20version-2.1.0-blue.svg)](https://github.com/helseprofil/norgeo)

Regional granularity levels in Norway which are depicted by different
codes, have undergone several changes over the years. Identifying when
codes have changed and how many changes have taken place can be
troublesome. This package will help to identify these changes and when
the changes have taken place. One of the limitation of this package is
that it is heavily depending on the codes available from SSB which can
be accessed from their
[website](https://www.ssb.no/befolkning/artikler-og-publikasjoner/regionale-endringer-2020).

## Installation

`norgeo` package can be installed directly from CRAN or via **GitHub**
page of [Helseprofil](https://github.com/helseprofil). You can run the
code below for installation.

``` r
install.packages("norgeo")
```

If you want to install the development version then use `remotes`
package to access to the **GitHub**. If you haven’t installed it before,
the package will be installed automatically prior to installing `norgeo`
if you run the code below.

``` r
if(!require(remotes)) install.packages("remotes")
remotes::install_github("helseprofil/norgeo")
```

## Usage

The data is downloaded via API form SSB
[website](https://data.ssb.no/api/klass/v1/api-guide.html "ssb"). To
learn how to use the different functions in **norgeo**, please read the
tutorial under [Get
Started](https://helseprofil.github.io/norgeo/articles/use-api.html)

## Output

Among the output produced by the function `get_change()` is as follows:

![output-result](man/figures/kommune_merge.png)

The data elucidate the complexity of all the codes change. For Larvik
for instance, the municipality has grown in 2020 with the inclusion of
Lardal. Therefore the code for Larvik has changed twice. How about
Holmestrand? When there are more than 350 municipality with different
changes, then tracking these can be a nightmare. The same with
enumeration units ie. *grunnkrets* with 14000 units!
