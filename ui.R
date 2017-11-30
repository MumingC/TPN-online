library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("TPN online ver 0.1"),
  
  # Sidebar with a slider input for number of glcuose 
  sidebarLayout(
    sidebarPanel(
      textInput("BW", "Bodyweight (kg)", 3),
      textInput("flow", "Flow Rate (cc/hr)", 5),
      sliderInput("glucose",
                   "Percentage of glucose:",
                   min = 1,
                   max = 25,
                   value = 10),
       sliderInput("Protein","Protein (%)",
                   min=1, 5, 2, step=0.5)
    ),
    
    # Printout sugar concentration
    mainPanel(
      h4("SIR"),
      textOutput("SIR")
    )
  )
))
