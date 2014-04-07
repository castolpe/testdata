
logical <- read.csv("doc/logical_variables.csv", stringsAsFactors=FALSE)
v <- read.csv("doc/variables.csv")

datasetRawVar <-  rbind(subset(logical, logical$dataset=="ah"),
                        subset(logical, logical$dataset=="bh"),
                        subset(logical, logical$dataset=="ch"),
                        subset(logical, logical$dataset=="ap"),
                        subset(logical, logical$dataset=="bp"),
                        subset(logical, logical$dataset=="cp"),
                        subset(logical, logical$dataset=="al"),
                        subset(logical, logical$dataset=="bl"),
                        subset(logical, logical$dataset=="cl"))


ds <- levels(factor(datasetRawVar$dataset))


total <- merge(datasetRawVar, v, by.datasetRawVar = "datasets")


for(d in seq(ds)){
  text.rename <- ""
  text.label <- ""
  text.category <- ""
  text.open <- paste("use raw/", ds[d], "-raw.dta, clear","\n", sep="")
  text.save <- paste("save out/", ds[d], ".dta, replace",sep="")
  low1 <- paste("foreach var of varlist _all{", "\n", sep="")
  low2 <- paste("rename `var' `=lower(", "`var'",  ")'",sep="\"")
  low3 <- paste("\n", "}", "\n", sep="")  
  low <- paste(low1, low2, low3, sep="")
  
  for(i in seq(nrow(datasetRawVar[which(datasetRawVar$dataset==ds[d]),]))){
    text.rename <- paste(
      text.rename,
      "rename", factor(datasetRawVar[which(datasetRawVar$dataset==ds[d]),][i, "variable_raw"]), factor(datasetRawVar[which(datasetRawVar$dataset==ds[d]),][i, "variable"]), "\n")
  }
  for(j in seq(nrow(total[which(total$dataset==ds[d]),]))){
    text.label <- paste(
      text.label,
      "label var ", factor(total[which(total$dataset==ds[d]),][j, "variable"]), " \"", factor(total[which(total$dataset==ds[d]),][j, "label"]), "\"\n", sep="")  
    
    if(!factor(total[which(total$dataset==ds[d]),][j, "categories"])==""){
      cate <- fromJSON(paste("{", as.character(total[which(total$dataset==ds[d]),][j, "categories"]),"}", sep=""))
      
      x<-""
      for(catnr in seq(names(cate))){
        x<-paste(x, as.name(names(cate)[catnr]), " \"", cate[[catnr]], "\" " , sep="")
      }
      
      text.category <- paste(
        text.category, 
        "lab def ", factor(total[which(total$dataset==ds[d]),][j, "variable"]) , x, "\n", sep=" ")
    }
  }
  cat( text.open, low , text.rename, text.label, text.category, text.save)
  write(c( text.open, low, text.rename, text.label, text.category, text.save), paste("tmp/",ds[d], ".", "do", sep=""))
}


