library(shiny)

shinyServer(function(input, output) {
  
  #Calculate SIR, TDF
  output$SIR <- renderText({
    BW <- as.numeric(input$BW)
    flow <- as.numeric(input$flow)
    paste(round(input$glucose * flow / (6 * BW), 3), "mg/kg/min")
    
  })
  output$TDF <- renderText({
    BW <- as.numeric(input$BW)
    flow <- as.numeric(input$flow)
    paste( flow * 24 / BW, "cc/kg/day")
  })
  output$protein <- renderText({
    BW <- as.numeric(input$BW)
    flow <- as.numeric(input$flow)
    protein <- as.numeric(input$Protein)
    paste( flow * 24 * protein / (100*BW), "g/kg/day")
  })  
  
})
