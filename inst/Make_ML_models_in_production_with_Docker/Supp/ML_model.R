library(randomForest)
library(data.table)

raw_dataset <- fread("breast_cancer_wisconsin.csv")
dataset <- raw_dataset[, -c("id")]
names(dataset) <- make.names(names(dataset))

set.seed(42)
classifier <- randomForest(factor(diagnosis) ~ ., data = dataset, importance = TRUE, proximity = TRUE)
saveRDS(classifier, "classifier.rds")



