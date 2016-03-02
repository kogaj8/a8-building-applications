library(shiny)
library(dplyr)
data("iris")

shinyServer(function(input, output) {
  
  output$histogram <- renderPlot({
    x <- eval(parse(text = input$display))
    hist(x, col = input$color, xlab = input$display, main = "Histogram of flower measurements")
  })
  
})