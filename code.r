library(arules)

fp.df <- read.csv("Data/Faceplate.csv")

fp.mat <- as.matrix(fp.df[, -1])
fp.trans <- as(fp.mat, "transactions")
inspect(fp.trans)
rules <- apriori(fp.trans, parameter = list(support = 0.2, confidence = 0.5, target = "rules"))

inspect(head(sort(rules, by = "lift"), n = 6))
