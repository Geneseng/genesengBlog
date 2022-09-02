library(randomForest)

set.seed(42)
classifier <- randomForest(Species ~ ., data = iris, importance = TRUE, proximity = TRUE)
saveRDS(classifier, "classifier.rds")




