#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    if(input$p=='a'){
      i<-1
    }
    
    if(input$p=='b'){
      i<-2
    }
    
    if(input$p=='c'){
      i<-3
    }
    
    x    <- trees[, i]
    
    #referring input bins in ui.r as input$bins
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    xlab <- ifelse(input$Show_xlab, "No. of Bins and its AVERAGE", "")
    main <- ifelse(input$Show_title, "Black Cherry Trees", "")
    col=ifelse(input$show_lines,"orange","skyblue")
    
    #producing histogram as output
    hist(x, prob = TRUE, breaks = bins, col = col, border = 'black',
         xlab = xlab, main = main)
    abline(v = mean(x), col="red", lwd=5, lty=5)
    lines(density(x, adjust=1), lty="dotted", lwd = 5)
  })
})