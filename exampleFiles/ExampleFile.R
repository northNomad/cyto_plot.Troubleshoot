library(CytoExploreR)
library(tidyverse)
#####
gs <- GatingSet(fs)

lgcl.obj <- logicle_trans()
lgcl.tlist <- transformerList(colnames(gs)[3:12], lgcl.obj)
transform(gs, lgcl.tlist)
###

cyto_gatingTemplate_apply(gs, "20200228_day10.sykKD.Unsorted.csv")

###

#2D: Stat gives 54.69, 61.73, 45.64
cyto_plot(gs[1:3], 
          parent = "lymph.notMargin", 
          alias = "Gr1 +",
          channels = c("FSC.A", "FL4.A"))


#1 DStat gives 42.93, 56.84, 54.69
cyto_plot(gs[1:3], 
          parent = "lymph.notMargin", 
          alias = "Gr1 +",
          channels = c("FL4.A"),
          density_stack = 0.75)
