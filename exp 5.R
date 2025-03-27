#install.packages("shiny")
# Load necessary libraries
library(shiny)
library(ggplot2)


# Using built-in 'mtcars' dataset
data(mtcars)

# Define UI for the dashboard
ui <- fluidPage(
  titlePanel("Car Data Dashboard"),
  sidebarLayout(
    sidebarPanel(
      selectInput("var", "Choose a variable:", choices = names(mtcars), selected = "mpg")
    ),
    mainPanel(
      plotOutput("histPlot")
    )
  )
)

# Define server logic
server <- function(input, output) {
  output$histPlot <- renderPlot({
    ggplot(mtcars, aes_string(x = input$var)) +
      geom_histogram(fill = "blue", bins = 10, color = "black") +
      labs(title = paste("Histogram of", input$var), x = input$var, y = "Frequency")
  })
}

# Run the application
shinyApp(ui = ui, server = server)