
library("foreign")


#extracts datasets and variables from variables.csv
csvVariables <- function(dataPath){
  variable <- tolower(read.csv(dataPath)$variable)
  dataset <- tolower(read.csv(dataPath)$dataset)
  return(data.frame(dataset = dataset, variable = variable, in_csv = TRUE))
}

variablelistCSV <- csvVariables("../doc/doc_csv/variables.csv")


#extracts datasets and variables from 04-dist/german
data <- function(dataPath){
  filesToLoad <- list.files(path = dataPath, full.names = TRUE)
  
  listAllVariables <- NULL
  
  for(i in 1:18){
    datasetName <- gsub("(.*)[.][a-z0-1]*","\\1", list.files(path = dataPath, full.names = FALSE)[i], ignore.case = TRUE)
    variableName <- tolower(names(read.dta(file = filesToLoad[i])))
    variablesOneDataset <- data.frame(dataset=datasetName, variable=variableName, in_dataset = TRUE)
    listAllVariables <- rbind(listAllVariables, variablesOneDataset)                   
  }
  return(listAllVariables)
}

allVariables <- data("../data/04-dist/german/Stata12/")

#merging csv variables with dataset variables
total <- merge(variablelistCSV, allVariables, all = TRUE)

#prüflisten
varOnlyIn_CSV <- subset(total, total$in_csv & is.na(total$in_dataset), select = c(dataset, variable))
   
varOnlyIn_Dataset  <- subset(total, is.na(total$in_csv) & total$in_dataset, select = c(dataset, variable))

