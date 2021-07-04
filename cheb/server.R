library(shiny)
source("D:\\R-shiny\\git\\mathematical\\cheb\\cheb.R")
# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$cheb <- renderPlot({
        chebyshev(input$bins)
    })

})
