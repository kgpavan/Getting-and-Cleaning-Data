# install.packages('dplyr')
library('dplyr')

breaks <- quantile(mergedDT[, Rank], probs = seq(0, 1, 0.2), na.rm = TRUE)
mergedDT$quantileGDP <- cut(mergedDT[, Rank], breaks = breaks)
mergedDT[`Income Group` == "Lower middle income", .N, by = c("Income Group", "quantileGDP")]

# Answer 
#           Income Group quantileGDP  N
# 1: Lower middle income (38.6,76.2] 13
# 2: Lower middle income   (114,152]  9
# 3: Lower middle income   (152,190] 16
# 4: Lower middle income  (76.2,114] 11
# 5: Lower middle income    (1,38.6]  5