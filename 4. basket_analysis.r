# Load the Association Rules Library
# Running a Basket Analysis at Scale.
# For small datasets, the R package arules can be used:

library(arules)

# Read the example dataset groceries
groceries <- read.transactions("groceries.csv", sep = ",")

library(readr)


# Show some statistics of the dataset
summary(groceries)
inspect(groceries[1:5])
itemFrequency(groceries[, 1:3])
itemFrequencyPlot(groceries, support = 0.1)
itemFrequencyPlot(groceries, topN = 20)
image(groceries[1:5])
image(sample(groceries, 100))

# Run an association model rules model
groceryrules <- apriori(groceries, 
                        parameter = list(support = 0.006, 
                                         confidence = 0.25, 
                                         minlen = 2))

# Show the rules
groceryrules
summary(groceryrules)
inspect(groceryrules[1:3])
inspect(sort(groceryrules, by = "lift")[1:10])

library(arulesViz)
plot(groceryrules)

# Finding rules with Berries
berryrules <- subset(groceryrules, items %in% "berries")
inspect(berryrules)

# Writing rules to a .csv file
write(groceryrules, file = "groceryrules.csv",
      sep = ",", quote = TRUE, row.names = FALSE)

# Now, convert the dataset to an R dataframe file, for later usage.
groceryrules_df <- as(groceryrules, "data.frame")
str(groceryrules_df)

# For bigger datasets, Spark with the MLlib library can be used.
# Since we are using R, SparklyR is used.

