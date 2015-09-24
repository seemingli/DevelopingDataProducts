library(shiny)
beginvalue <<- 0
endvalue <<- 0
n <<- 0
cagr <<- 0

shinyServer(
  function(input,output) {
    cagr <- reactive({round((((as.numeric(input$endvalue)/as.numeric(input$beginvalue))^(1/as.numeric(input$n))-1)*100),3)})
    output$beginvalue <- renderText({input$beginvalue})
    output$endvalue <- renderText({input$endvalue})
    output$n <- renderText({input$n})
    output$cagr <- renderText({
      cagr() }
      )
  }
)