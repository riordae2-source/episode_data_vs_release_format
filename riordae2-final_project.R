library(readr)
data<-read_csv("data.csv")

dim(data)
names(data)
summary(data)

# descriptive statistics table 1

# generate summary statistics for episodes
mean(data$episodes)
sd(data$episodes)

# summary for release format
sd(data$release_format)

# generate proportations 
table(data$release_format)

#linear regression test

linear_relationship <- lm(episodes ~ as.factor (release_format), data = data)
summary(linear_relationship)

#box plot
boxplot(data$episodes ~ data$release_format)