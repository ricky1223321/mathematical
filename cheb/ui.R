library(shiny)
library(shinydashboard)
source("sub_ui.R")
dashboardPage(skin="blue",
              dashboardHeader(
                title = "Chebyshev Theorem"
              ),
              dashboardSidebar(
                sidebarMenu(
                  menuItem("Continuous Distribution",tabName = "CDistribution", icon=icon("image"),
                           menuItem("Normal Distribution",tabName = "nor", icon=icon("braille")),
                           menuItem("Uniform Distribution",tabName = "uni", icon=icon("chart-pie")),
                           menuItem("Exponential Distribution",tabName = "exp", icon=icon("chart-bar"))
                  ),
                  menuItem("Discrete Distribution",tabName = "DDistribution", icon=icon("image"),
                           menuItem("Binomial Distribution",tabName = "bin", icon=icon("braille")),
                           menuItem("Geometric Distribution",tabName = "geo", icon=icon("chart-pie")),
                           menuItem("Poisson Distribution",tabName = "poi", icon=icon("chart-bar"))
                  )
                )
              ),
              dashboardBody(
                tabItems(
                  tabItem(tabName = "nor",
                          nor_ui
                  ),
                  tabItem(tabName = "uni",
                          uni_ui
                  ),
                  tabItem(tabName = "exp",
                          exp_ui
                  ),
                  tabItem(tabName = "bin",
                          bin_ui
                  ),
                  tabItem(tabName = "geo",
                          geo_ui
                  ),
                  tabItem(tabName = "poi",
                          poi_ui
                  )
                )
              )
)