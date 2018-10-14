# "High income: OECD" 
mergedDT[`Income Group` == "High income: OECD"
         , lapply(.SD, mean)
         , .SDcols = c("Rank")
         , by = "Income Group"]

# Answer:
#
#         Income Group     Rank
# 1: High income: OECD 32.96667

# "High income: nonOECD"
mergedDT[`Income Group` == "High income: nonOECD"
         , lapply(.SD, mean)
         , .SDcols = c("Rank")
         , by = "Income Group"]

# Answer
#            Income Group     Rank
# 1: High income: nonOECD 91.91304