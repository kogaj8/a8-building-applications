library(shiny)

shinyUI(
  
  fluidPage(
    
    titlePanel("Assignment 8"),
    
    sidebarLayout(position = "right",
      
      sidebarPanel(
        radioButtons("color", label = h3("Color"),
                     choices = list("Green" = 'green', "Blue" = 'blue'), 
                     selected = 'green'), 
        selectInput("display", label = h3("Choose Characteristic"), 
                    choices = list("Sepal Length" = 'iris$Sepal.Length', 
                                   "Sepal Width" = 'iris$Sepal.Width', 
                                   "Petal Length" = 'iris$Petal.Length',
                                   "Petal Width" = 'iris$Petal.Width'), 
                    selected = 'iris$Sepal.Length')
        
      ),
      
      mainPanel(
        
        plotOutput('histogram')
      )
      
    )
    
  )
)