library(shiny)
library(randomForest)

ui <- shiny::fluidPage(
  shiny::dataTableOutput('table')
)

server <- function(input, output, session){
  
  classifier <- readRDS("classifier.rds")
  prediction <- predict(classifier, iris)
  prediction_df <- data.frame(prediction, observation = iris$Species)
  
  output$table <- shiny::renderDataTable(
    prediction_df
  )
  
}

shinyApp(ui = ui, server = server)
