install.packages("dplyr")
library(dplyr)
library(gapminder)
gapminder  %>% 
  # countryとlifeExp列だけを選択
  select(country, lifeExp) %>% 
  
  # countryを２つに絞る
  filter(country == "South Africa" |
           country == "Ireland") %>% 
  
  # countryごとに集計する
  group_by(country) %>%
  
  # 集計した結果を出す
  summarise(Average_life = mean(lifeExp))


#?arrange
# mtcarsデータフレームのdisp列を降順でソートする
arrange(mtcars,desc(disp)) %>% head()

df <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David"),
  Age = c(25, 30, 22, 35),
  Score = c(85, 92, 78, 65)
)
df

df %>%
  mutate(
    DoubleAge = Age * 2,            # Create a new column by doubling Age
    ModifiedScore = Score + 5      # Modify an existing column by adding 5 to Score
  )

print(df)


library(dplyr)

# Create a sample data frame
df <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David"),
  Age = c(25, 30, 22, 35)
)

# Extract the second row
result <- slice(df, 2)
print(result)

# Extract the first and third rows
result <- slice(df, c(1, 3))
print(result)

# Extract rows 2 through 4
result <- slice(df, c(2:4))
print(result)


library(dplyr)
library(gapminder)
gapminder  %>% 
  # countryとlifeExp列だけを選択
  select(country, lifeExp) %>% 
  
  # countryを２つに絞る
  filter(country == "South Africa" |
           country == "Ireland") %>% 
  
  # countryごとに集計する
  group_by(country) %>%
  
  # 集計した結果を出す
  summarise(Average_life = mean(lifeExp))


library(dplyr)

# Create a sample data frame
df <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David", "Eve", "Frank"),
  Age = c(25, 30, 22, 35, 28, 40)
)
df
# Sample 3 random rows without replacement
sampled_data <- sample_n(df, 3)
print(sampled_data)


# Sample 3 random rows with replacement
sampled_data_replace <- sample_n(df, 3, replace = TRUE)
print(sampled_data_replace)
?sample_n

df <- tibble(x = 1:5, w = c(0.1, 0.1, 0.1, 2, 2))
df
sample_n(df, 10, replace = TRUE)


# Create a sample data frame
df <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David", "Eve", "Frank"),
  Age = c(25, 30, 22, 35, 28, 40)
)
df
weights <- ifelse(df$Age > 25, 2, 1)
sampled_data_weighted <- sample_n(df, 4, replace = TRUE, weight = weights)
print(sampled_data_weighted)

sampled_data_weighted <- sample_n(df, 4, rep, weight = weights)
print(sampled_data_weighted)
weights


# Create a vector of scores
scores <- c(85, 75, 92, 60, 78)

# Create a new vector where scores are categorized as "Excellent," "Good," or "Poor"
score_category <- ifelse(scores >= 90, "Excellent", ifelse(scores >= 80, "Good", "Poor"))
print(score_category)

library(dplyr)

# Create a sample data frame
df <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David", "Eve", "Frank"),
  Age = c(25, 30, 22, 35, 28, 40)
)

# Sample 30% of the rows without replacement
sampled_data <- sample_frac(df, 0.3)
print(sampled_data)


library(tidyr)

# Create a sample data frame with wide data
wide_data <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Math_Score = c(90, 85, 92),
  English_Score = c(88, 90, 86)
)
wide_data

long_data <- gather(wide_data, Subject, Score, Math_Score, English_Score)
long_data


library(tidyr)

# Create a sample data frame in long format
long_data <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Subject = c("Math_Score", "Math_Score", "English_Score"),
  Score = c(90, 85, 92)
)
long_data

wide_data <- spread(long_data, key = Subject, value = Score)
wide_data

library(tidyr)

# Create a sample data frame with a combined column
data <- data.frame(
  NameAge = c("Alice_25", "Bob_30", "Charlie_22", "David_35")
)

data
# Separate the "NameAge" column into "Name" and "Age" columns
separated_data <- separate(data, col = NameAge, into = c("Name", "Age"), sep = "_")
print(separated_data)


library(tidyr)

# Create a sample data frame with multiple columns
data <- data.frame(
  First_Name = c("Alice", "Bob", "Charlie"),
  Last_Name = c("Smith", "Johnson", "Brown"),
  Age = c(25, 30, 22)
)
data
united_data <- unite(data, col = Full_Name, First_Name, Last_Name, sep = " ")
united_data
