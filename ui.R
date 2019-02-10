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
  
  # Application title
  titlePanel("Developing Data Products"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("bins",
                   "Slide this to set number of bins:",
                   min = 1,
                   max = 50,
                   value = 10),
       checkboxInput("Show_xlab","Show / Hide X - AXIS Label", value = TRUE),
       checkboxInput("Show_title","Show / Hide Title Label")
       ),
    
    # Show a plot of the generated distribution
    mainPanel(
       h3("Week 4 Assignment"),
       plotOutput("distPlot")
    )
  )
))
