# wdiexplorer <a href="https://github.com/Oluwayomi-Olaitan/wdiexplorer"><img src="man/figures/wdiexplorer_logo.png" align="right" height="150" width = "135" alt="wdiexplorer logo" /></a>

The `wdiexplorer` package provides a collection of indices and visualisation tools for exploratory analysis of country-level panel data from the World Development Indicators (WDI, [the world bank collection of development indicators](https://databank.worldbank.org/home.aspx)) using the `WDI` R package to effectively source and store the data locally. 
The package name is an acronym that captures its core functionality: World Development Indicators Explorer.

There are two main goals of the `wdiexplorer` package:

1. A collection of diagnostic indices that characterise panel data behaviour.

2. Group-informed exploration of country-level panel data that leverage the pre-defined groupings of the data through interactive visuals to capture behavioural patterns and highlight group-based features.
World Development Indicators Explorer in R

## Installation

You can install the `wdiexplorer` package from [GitHub](https://github.com/Oluwayomi-Olaitan/wdiexplorer)

```
#install.packages("devtools")

#devtools::install_github(Oluwayomi-Olaitan/wdiexplorer)

library(wdiexplorer)

```


For a detailed workflow of the package that computes the set of diagnostic indices measures and visualisation examples of their outputs, see package vignette .
