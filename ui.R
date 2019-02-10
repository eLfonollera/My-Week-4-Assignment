#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  #fluid page for dynamically adapting to screens of different resolutions.
  titlePanel("Black Cherry Trees"),
  sidebarLayout(
    sidebarPanel(
      #implementing radio buttons
      radioButtons("p", "Select column of Black Cherry Trees dataset:",
                   list("Girth"='a', "Height"='b', "Volume"='c')),
      
      #slider input for bins of histogram
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 20,
                  value = 5),
      checkboxInput("Show_xlab","Show / Hide X - AXIS Label", value = TRUE),
      checkboxInput("Show_title","Show / Hide Title Label"),
      checkboxInput("show_lines","Change Color")
      
      # Show a plot of the generated distribution
    ),
    mainPanel(
      h3("Week 4 Assignment"),
      plotOutput("distPlot")
    )
  )
))