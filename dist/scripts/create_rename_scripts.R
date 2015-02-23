
# Libraries
library("foreign")

.main <- function(){
  filenames <- .filenames()
  .iterate_files(filenames)
}

.filenames <- function(){
  filenames <- data.frame(
    name = c("ah", "bh", "ch", "ap", "bp", "cp"))
  filenames$raw  <- paste("raw/", filenames$name, "-raw.dta", sep="")
  filenames$dist <- paste("dist/", filenames$name, ".dta", sep="")
  filenames
}

.iterate_files <- function(filenames){
  for( i in seq(nrow(filenames))){
    x <- filenames[i, ]
    raw  <- names(read.dta(x$raw))
    dist <- names(read.dta(x$dist))
    .write_script(raw, dist, x$raw, x$dist, paste("dist_script/", x$name, ".do", sep=""))
    .write_script(dist, raw, x$dist, x$raw, paste("dist_back/", x$name, ".do", sep=""))
  }
}

.write_script <- function(names1, names2, file1, file2, fileout){
  if(length(names1) != length(names2)) {
    cat("[ERROR] Names do not match.")
    return(NULL)
  }
  script <- paste("use", file1, ", clear \n", sep=" ")
  for(i in seq(length(names1)))
  script <- paste(script, "rename", names1[i], names2[i], "\n", sep=" ")
  script <- paste(script, "saveold", file2, "\n", sep=" ")
  write(script, fileout)
}

.main()

