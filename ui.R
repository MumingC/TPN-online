library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("TPN online ver 0.2"),
  
  # Sidebar with a slider input for number of glcuose 
  sidebarLayout(
    sidebarPanel(
      p("Enter the following information to calculate the end result of Total parenteral nutrition:"), 
      HTML('for more information, please see <a href="https://mumingc.github.io/TPN-online/pitch.html">introduction slides here</a>'),
      br(), br(),
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
      h4("Sugar infusion rate: "),
      textOutput("SIR"),
      h4("Total daily fluid:"),
      textOutput("TDF"),
      h4("Total daily protein:"),
      textOutput("protein")
    )
  )
))
