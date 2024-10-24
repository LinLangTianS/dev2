library(arules)
# e.g.1:手机保护壳交易数据库中的关联规则
fp.df <- read.csv("Data/Faceplate.csv")

fp.mat <- as.matrix(fp.df[, -1])
fp.trans <- as(fp.mat, "transactions")
inspect(fp.trans)
rules <- apriori(fp.trans, parameter = list(support = 0.2, confidence = 0.5, target = "rules"))

inspect(head(sort(rules, by = "lift"), n = 6))