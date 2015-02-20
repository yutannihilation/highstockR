#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
highstock <- function(data, name, width = NULL, height = NULL) {

  # forward options using x
  x = list(
    data = data,
    name = name
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'highstock',
    x,
    width = width,
    height = height,
    package = 'highstockR'
  )
}

#' Widget output function for use in Shiny
#'
#' @export
highstockOutput <- function(outputId, width = '100%', height = '400px'){
  shinyWidgetOutput(outputId, 'highstock', width, height, package = 'highstockR')
}

#' Widget render function for use in Shiny
#'
#' @export
renderHighstock <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  shinyRenderWidget(expr, highstockOutput, env, quoted = TRUE)
}
