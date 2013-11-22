
library("r2ddi")

path_in_c <- c("../data/02-basic/",
               "../data/02-structure/",
               "../data/03-gen/" )

for(i in path_in_c) dir2xml(path_in = i, path_out = "./")

