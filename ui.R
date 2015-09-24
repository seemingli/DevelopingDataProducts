library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Compound Annual Growth Rate Calculator"),
  sidebarPanel(
    textInput(inputId="beginvalue", label = "Input Beginning Value"),
    textInput(inputId="endvalue", label = "Input Ending Value"),
    textInput(inputId="n", label = "Input Number of years")
  ),
  mainPanel(
    h4("What is Compound Annual Growth Rate?"),
    p(strong("Compound Annual Growth Rate")," is the average annual growth rate over a period of time 
      and is particularly useful for measuring returns on investment which could be highly voilatile from year to year."),
    br(),
    h4("Instantaneous Calculator of Compound Annual Growth Rate"),
    h5("Beginning value"),
    textOutput('beginvalue'),
    h5('Ending value'),
    textOutput('endvalue'),
    h5('Number of years'),
    textOutput('n'),
    h5('Compound Annual Growth Rate (%)'),
    textOutput('cagr')
  )
))
