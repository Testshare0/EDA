
packages <- c("GGally", "MASS", "reshape2", "ggplot2")
new_packages <- packages[!(packages %in% installed.packages()[,"Package"])]
if(length(new_packages)) install.packages(new_packages)

# 📌 Load Required Libraries
library(GGally)      # For scatterplot matrix and parallel coordinates plot
library(ggplot2)     # For visualizations
library(reshape2)    # For reshaping data

# 📌 Load the Dataset
data <- mtcars

# 📌 Scatterplot Matrix (Multivariate Relationships)
ggpairs(data, columns = c("mpg", "hp", "wt", "disp", "drat"),
        title = "Scatterplot Matrix of Selected Variables in mtcars")

# 📌 Parallel Coordinates Plot (Using GGally)
data$cyl <- as.factor(data$cyl)  # Convert to categorical variable
ggparcoord(data, columns = c(1, 3, 4, 5, 6), groupColumn = "cyl", alphaLines = 0.7) +
  theme_minimal() +
  labs(title = "Parallel Coordinates Plot of mtcars Variables",
       x = "Variables", y = "Values") +
  scale_color_manual(values = c("red", "blue", "green"))

# 📌 Faceted Scatter Plots
ggplot(data, aes(x = hp, y = mpg, color = factor(cyl))) +
  geom_point(size = 3) +
  facet_wrap(~gear) +
  theme_minimal() +
  labs(title = "MPG vs HP Faceted by Gear",
       x = "Horsepower (hp)",
       y = "Miles per Gallon (mpg)",
       color = "Cylinders")

# 📌 Heatmap (Correlation Matrix)
corr_matrix <- cor(data)  # Compute correlation matrix
corr_melted <- melt(corr_matrix)  # Convert to a melted format

ggplot(corr_melted, aes(Var1, Var2, fill = value)) +
  geom_tile() +
  scale_fill_gradient2(low = "blue", high = "red", mid = "white",
                       midpoint = 0, limit = c(-1, 1), space = "Lab") +
  theme_minimal() +
  labs(title = "Correlation Heatmap of mtcars Variables",
       x = "Variables", y = "Variables")

