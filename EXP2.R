# Load mtcars dataset
data <- mtcars
#install.packages("ggplot2")
# View the first few rows
head(data)
library(ggplot2)

#histogram
ggplot(data, aes(x = mpg)) +
  geom_histogram(binwidth = 3, fill = "skyblue", color = "black") +
  theme_minimal() +
  labs(title = "Histogram of MPG", x = "Miles per Gallon", y = "Count")

#box plot with  
ggplot(data, aes(x = factor(cyl), y = hp)) +
  geom_boxplot(fill = "lightblue", alpha = 0.7) +  # Box plot
  geom_jitter(color = "red", width = 0.2, alpha = 0.7) +  # Jittered points
  theme_minimal() +
  labs(title = "Box Plot of HP by Cylinders", x = "Cylinders", y = "Horsepower")

# Grouped Bar Plot
ggplot(data, aes(x = factor(cyl), fill = factor(gear))) +
  geom_bar(position = "dodge") +  # Grouped bars
  theme_minimal() +
  labs(title = "Grouped Bar Plot: Cylinders vs Gears", x = "Cylinders", fill = "Gears")

#Line Plot with Multiple Lines 
ggplot(data) +
  geom_line(aes(x = seq_along(mpg), y = mpg, color = "MPG"), size = 1) +
  geom_line(aes(x = seq_along(hp), y = hp, color = "HP"), size = 1, linetype = "dashed") +
  theme_minimal() +
  labs(title = "MPG & HP Over Car Index", x = "Car Index", y = "Value", color = "Legend")
 