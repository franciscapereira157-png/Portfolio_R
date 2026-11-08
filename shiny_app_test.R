#mean as outcome, fixed-sample design, two arms, one sided



library(shiny)



#user interface

ui <- fluidPage(
  
  titlePanel("Sample Size Calculation - One Sided Test"),
  
  numericInput("sd", "Standard Deviation:", 1),
  
  numericInput("alpha", "Type I error rate:", 0.05),
  
  numericInput("beta", "Type II error rate:", 0.2),
  
  numericInput("delta", "Effect Size:", 0.2),
  
  textOutput("result")
  
)



#server





server <- function(input, output) {
  
  
  
  total_sample_size <- reactive({
    
    z <- round(qnorm(1-input$alpha),3) # efficacy boundary
    
    z_b <- round(qnorm(1-input$beta),3)
    
    sample_size_per_group <- round(((z+z_b)^2*2*input$sd^2)/input$delta^2, 3)
    
    2 * sample_size_per_group
    
  })
  
  output$result <- renderText({
    
    paste("Total Sample Size is", total_sample_size())
    
  })
  
}

shinyApp(ui = ui, server = server)