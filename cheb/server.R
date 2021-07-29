library(shiny)
source("D:\\數統\\git\\mathematical\\cheb\\cheb.R")
# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  #normal
  observeEvent(input$set1,{
    output$norPlot <- renderPlot({
      mu=input$norInput_mean
      va=input$norInput_var
      n=input$norInput_N
      xs <- c(rnorm(n,mu,va))
      k = input$k1
      chebyshev(xs ,k)
    })
  })
  #uniform
  observeEvent(input$set2,{
    output$uniPlot <- renderPlot({
      lower_bound = input$uniInput_theta1
      upper_bound = input$uniInput_theta2
      n = input$uniInput_N
      xs <- c(runif(n,lower_bound,upper_bound))
      k = input$k2
      chebyshev(xs ,k)
    })
  })
  #exp
  observeEvent(input$set3,{
    output$expPlot <- renderPlot({
      lambda = 1/(input$expInput_beta)
      n = input$expInput_N
      xs <- c(rexp(n,lambda))
      k = input$k3
      chebyshev(xs ,k)
    })
  })
  #bin
  observeEvent(input$set4,{
    output$binPlot <- renderPlot({
      size = input$binInput_size
      prob = input$binInput_prob
      n = input$binInput_N
      xs <- c(rbinom(n,size = size,prob = prob))
      #xs <- c(rbinom(2000,10,0.5))
      k = input$k4
      chebyshev(xs ,k)
    })
  })
  #geo
  observeEvent(input$set5,{
    output$geoPlot <- renderPlot({
      prob = input$geoInput_prob
      n = input$geoInput_N
      xs <- c(rgeom(n,prob = prob))
      k = input$k5
      chebyshev(xs ,k)
    })
  })
  #poi
  observeEvent(input$set6,{
    output$poiPlot <- renderPlot({
      lamb = input$poiInput_lamb
      n = input$poiInput_N
      xs <- c(rpois(n,lamb))
      k = input$k6
      chebyshev(xs ,k)
    })
  })
})
