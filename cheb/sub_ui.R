nor_ui = fluidPage(
  box(
    numericInput("norInput_mean","Mean",0),
    numericInput("norInput_var","Var",1),
    numericInput("norInput_N","N",2000),
    sliderInput("k1",
                "k",
                min = 1,
                max = 3,
                value = 1,
                step = 0.1),
    actionButton('set1','set',icon=icon('upload')),
  ),
  box(
    plotOutput("norPlot")
  )
)

uni_ui = fluidPage(
  box(
    numericInput("uniInput_theta1","Theta1",0),
    numericInput("uniInput_theta2","Theta2",1),
    numericInput("uniInput_N","N",2000),
    sliderInput("k2",
                "k",
                min = 1,
                max = 3,
                value = 1,
                step = 0.1),
    actionButton('set2','set',icon=icon('upload')),
  ),
  box(
    plotOutput("uniPlot")
  )
)

exp_ui = fluidPage(
  box(
    numericInput("expInput_beta","Beta",10),
    numericInput("expInput_N","N",2000),
    sliderInput("k3",
                "k",
                min = 1,
                max = 3,
                value = 1,
                step = 0.1),
    actionButton('set3','set',icon=icon('upload')),
  ),
  box(
    plotOutput("expPlot")
  )
)

bin_ui = fluidPage(
  box(
    numericInput("binInput_size","Size",10),
    numericInput("binInput_N","N",2000),
    numericInput("binInput_prob","Prob",0.5),
    sliderInput("k4",
                "k",
                min = 1,
                max = 3,
                value = 1,
                step = 0.1),
    actionButton('set4','set',icon=icon('upload')),
  ),
  box(
    plotOutput("binPlot")
  )
)

geo_ui = fluidPage(
  box(
    numericInput("geoInput_prob","Prob",0.5),
    numericInput("geoInput_N","N",2000),
    sliderInput("k5",
                "k",
                min = 1,
                max = 3,
                value = 1,
                step = 0.1),
    actionButton('set5','set',icon=icon('upload')),
  ),
  box(
    plotOutput("geoPlot")
  )
)

poi_ui = fluidPage(
  box(
    numericInput("poiInput_lamb","Lambda",10),
    numericInput("poiInput_N","N",2000),
    sliderInput("k6",
                "k",
                min = 1,
                max = 3,
                value = 1,
                step = 0.1),
    actionButton('set6','set',icon=icon('upload')),
  ),
  box(
    plotOutput("poiPlot")
  )
)
