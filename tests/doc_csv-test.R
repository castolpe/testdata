library("testthat")
library("foreign")


# Extracts datasets and variables from variables.csv
csvVariables <- function(dataPath){
  variable <- tolower(read.csv(dataPath)$variable)
  dataset <- tolower(read.csv(dataPath)$dataset)
  return(data.frame(dataset = dataset, variable = variable, in_csv = TRUE))
}

variablelistCSV <- csvVariables("../doc/doc_csv/variables.csv")


# Extracts datasets and variables from 04-dist/german
data <- function(dataPath){
  filesToLoad <- list.files(path = dataPath, full.names = TRUE)
  
  listAllVariables <- NULL
  
  for(i in 1: length(filesToLoad)){
    datasetName <- gsub("(.*)[.][a-z0-1]*","\\1", list.files(path = dataPath, full.names = FALSE)[i], ignore.case = TRUE)
    variableName <- tolower(names(read.dta(file = filesToLoad[i])))
    variablesOneDataset <- data.frame(dataset=datasetName, variable=variableName, in_dataset = TRUE)
    listAllVariables <- rbind(listAllVariables, variablesOneDataset)                   
  }
  return(listAllVariables)
}

allVariables <- data("../data/04-dist/german/Stata12/")

# Merging csv variables with dataset variables
total <- merge(variablelistCSV, allVariables, all = TRUE)

# Create checklists
varOnlyIn_CSV <- subset(total, total$in_csv & is.na(total$in_dataset), select = c(dataset, variable))

varOnlyIn_Dataset  <- subset(total, is.na(total$in_csv) & total$in_dataset, select = c(dataset, variable))



##### 4 testthat #######

test_that("all variables in the data are listed in variables.csv", {
  expect_that(dim(varOnlyIn_Dataset)[1], equals(0))
})


allDatasets_variables.csv  <- levels(factor(read.csv("../doc/doc_csv/variables.csv")$dataset))
allDatasets_datasets.csv <- levels(factor(read.csv("../doc/doc_csv/datasets.csv")$dataset))

allStudies_datasets.csv <- levels(factor(read.csv("../doc/doc_csv/datasets.csv")$study))
allStudies_studies.csv <- levels(factor(read.csv("../doc/doc_csv/studies.csv")$study))

allAnalysisUnits_datasets.csv <- levels(factor(read.csv("../doc/doc_csv/datasets.csv")$analysis_unit))
allAnalysisUnits_analysis_units.csv <- levels(factor(read.csv("../doc/doc_csv/analysis_units.csv")$analysis_unit))

allConceptualDatasets_datasets.csv <- levels(factor(read.csv("../doc/doc_csv/datasets.csv")$conceptual_dataset))
allConceptualDatasets_conceptual_datasets.csv <- levels(factor(read.csv("../doc/doc_csv/conceptual_datasets.csv")$conceptual_dataset))

allPeriods_datasets.csv <- levels(factor(read.csv("../doc/doc_csv/datasets.csv")$period))
allPeriods_periods.csv <- levels(factor(read.csv("../doc/doc_csv/periods.csv")$period))



test_that("all datasets in variables.csv are listed in datasets.csv",{
  expect_that(allDatasets_variables.csv , equals(allDatasets_datasets.csv))
})

test_that("all studies in dataset.csv are listed in studies.csv",{
  expect_that(allStudies_datasets.csv  , equals(allStudies_studies.csv))
})

test_that("all analysis units in dataset.csv are listed in analysis_units.csv",{
  expect_that(allAnalysisUnits_datasets.csv  , equals(allAnalysisUnits_analysis_units.csv))
})

test_that("all conceptual datasets in dataset.csv are listed in conceptual_datasets.csv",{
  expect_that(allConceptualDatasets_datasets.csv  , equals(allConceptualDatasets_conceptual_datasets.csv))
})

test_that("all periods in dataset.csv are listed in periods.csv",{
  expect_that(allPeriods_datasets.csv  , equals(allPeriods_periods.csv))
})
