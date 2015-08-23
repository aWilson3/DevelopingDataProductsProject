library(shiny)
library(UsingR)

WinPercent <- function(rs, ra) round((rs^1.81/(rs^1.81 + ra^1.81)), 2)


shinyServer(
  function(input, output){
    output$oRS <- renderPrint({input$RS})
    output$oRA <- renderPrint({input$RA})
    output$oWP <- renderPrint({WinPercent(input$RS, input$RA)})
    output$oGW <- renderPrint({round(162*WinPercent(input$RS, input$RA))})
    output$oGL <- renderPrint({162 - round(162*WinPercent(input$RS, input$RA))})
      
  }
  
)
