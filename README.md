highstockR
=======

# What is this?

This is an R package to draw charts with highstock. This package is mainly for 
demonstration purpose at 46th Tokyo.R meeting.

# What is highstock?

[highstock](http://www.highcharts.com/stock/demo) is a wonderful Javascript library by Highsoft, 
provided under [CC BY-NC](http://creativecommons.org/licenses/by-nc/3.0/) license.

# What is Tokyo.R?

Tokyo.R is a reginal R meetup at Tokyo in Japan. Some report articles are available on R-bloggers.

# Installation

```r
devtools::install_github("yutannihilation/highstockR")
```

# Usage

```r
library(highstockR)
library(dplyr)

data <- RFinanceJ::rfj("USDJPY=X") %>%
  transmute(Date = as.numeric(Date) * 3600 * 24 * 1000, Close) %>%
  arrange(Date) %>%
  as.matrix

colnames(data) <- NULL
highstock(data, 'USDJPY=X')
```