highstockR
=======

# What is this?

This is an R package to draw charts with highstock. This package is mainly for 
demonstration purpose at 46th Tokyo.R meeting.

# What is highstock?

[highstock](http://www.highcharts.com/stock/demo) is a wonderful Javascript library by Highsoft, 
provided under [CC BY-NC](http://creativecommons.org/licenses/by-nc/3.0/) license.

## Think twice before using this!!!

A Highsoft software product is not free for commercial use. For more details, please see http://shop.highsoft.com/faq/non-commercial#what-is-non-commercial .

# What is Tokyo.R?

Tokyo.R is a reginal R meetup at Tokyo in Japan. Some [report articles](http://www.r-bloggers.com/tokyo-based-r-meetup-tokyor-45/) are available on R-bloggers.

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
