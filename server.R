library(shiny)

shinyServer(function(input, output) {
  #translation..

  
  #SIR
  calc_SIR <- reactive({
    BW <- as.numeric(input$BW)
    flow<- as.numeric(input$flow)
    (input$glucose * flow / (6 * BW))
  })
  output$SIR <- renderText({
    calc_SIR()
    })
    
  
})
