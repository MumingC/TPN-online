library(shiny)

shinyServer(function(input, output) {

  #SIR
  calc_SIR <- reactive({
    BW <- as.numeric(input$BW)
    flow<- as.numeric(input$flow)
    (input$glucose * flow / (6 * BW))
  })
  #TDF
  calc_TDF <- reactive({
    BW <- as.numeric(input$BW)
    flow<- as.numeric(input$flow)
    (flow * 24 / BW)
  })
  
  output$SIR <- renderText({
    paste("SIR=",calc_SIR())
    })
  output$TDF <- renderText({
    paste("TDF=",calc_TDF(), "cc/kg/day")
  })  
  
})
