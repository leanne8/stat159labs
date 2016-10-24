library(shiny)
#Import the files 
ad <- read.csv("Advertising.csv", header = TRUE)
#Delete the extra column
ad <- ad[,-1]

ui <- fluidPage(
  selectInput('xcol', 'Independent variables', names(ad[,c(1:3)])),
  plotOutput("scatter")
)

server <- function(input, output) {
  output$scatter <- renderPlot({
    plot(ad[,input$xcol], ad$Sales, main="Sales vs independent Regression Line")
  })
}

shinyApp(ui = ui, server = server)