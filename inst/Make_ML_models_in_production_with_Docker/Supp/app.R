library(shiny)
library(data.table)
library(randomForest)

ui <- shiny::fluidPage(
  shiny::dataTableOutput('table')
)

server <- function(input, output, session){
  
  dataset <- fread("breast_cancer_wisconsin.csv")
  names(dataset) <- make.names(names(dataset))
  
  classifier <- readRDS("classifier.rds")
  prediction <- predict(classifier, dataset)
  prediction_df <- data.frame(prediction, observation = dataset$diagnosis)
  
  output$table <- shiny::renderDataTable(
    prediction_df
  )
  
}

shinyApp(ui = ui, server = server)
