# 📌 Install Required Packages
install.packages("ggplot2")   # For data visualization
install.packages("GGally")    # For pair plots
install.packages("dplyr")     # For data manipulation

# 📌 Load Libraries
library(ggplot2)
library(GGally)
library(dplyr)

# 📌 Load Dataset
data <- mtcars

# ✅ **1. Distribution of a Continuous Variable** (Histogram + Density Plot)
ggplot(data, aes(x = mpg)) +
  geom_histogram(binwidth = 3, fill = "blue", alpha = 0.7, color = "black") +
  geom_density(alpha = 0.3, fill = "red") +
  theme_minimal() +
  labs(title = "Distribution of Miles Per Gallon (mpg)", x = "Miles Per Gallon", y = "Count")

# ✅ **2. Relationship Between Continuous Variables** (Scatter Plot + Trend Line)
ggplot(data, aes(x = hp, y = mpg)) +
  geom_point(color = "blue", size = 3) +
  geom_smooth(method = "lm", color = "red", linetype = "dashed") +
  theme_minimal() +
  labs(title = "Scatter Plot of MPG vs HP", x = "Horsepower", y = "Miles Per Gallon")

# ✅ **3. Distribution of a Categorical Variable** (Bar Chart)
ggplot(data, aes(x = factor(cyl), fill = factor(cyl))) +
  geom_bar() +
  theme_minimal() +
  labs(title = "Count of Cars by Cylinders", x = "Number of Cylinders", y = "Count", fill = "Cylinders")

# ✅ **4. Relationship Between Continuous and Categorical Variable** (Box Plot)
ggplot(data, aes(x = factor(cyl), y = mpg, fill = factor(cyl))) +
  geom_boxplot() +
  theme_minimal() +
  labs(title = "Box Plot of MPG by Number of Cylinders", x = "Number of Cylinders", y = "Miles Per Gallon", fill = "Cylinders")

# ✅ **5. Pair Plot for Multivariate Analysis**
ggpairs(data, columns = c("mpg", "hp", "wt", "disp"),
        title = "Pair Plot of Selected Variables in mtcars")

# ✅ **6. Violin Plot (Continuous vs Categorical)**
ggplot(data, aes(x = factor(gear), y = hp, fill = factor(gear))) +
  geom_violin(alpha = 0.7) +
  theme_minimal() +
  labs(title = "Violin Plot of HP by Gear", x = "Number of Gears", y = "Horsepower", fill = "Gears")
