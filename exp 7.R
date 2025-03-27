
# Load necessary library
library(ggplot2)

# Using built-in 'mtcars' dataset
data(mtcars)

# Basic Scatter Plot - Weight vs MPG (Shows Overplotting)
overplot_scatter <- ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point(alpha = 1, color = "red") +
  labs(title = "Overplotted Scatter Plot: Weight vs MPG", x = "Weight", y = "Miles Per Gallon")

# Solution 1: Transparency (alpha)
scatter_alpha <- ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point(alpha = 0.4, color = "blue") +
  labs(title = "Scatter Plot with Transparency", x = "Weight", y = "Miles Per Gallon")

# Solution 2: Jittering
scatter_jitter <- ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_jitter(alpha = 0.6, color = "green") +
  labs(title = "Scatter Plot with Jittering", x = "Weight", y = "Miles Per Gallon")

# Solution 3: Density Plot (alternative to scatter)
density_plot <- ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_bin2d() +
  scale_fill_gradient(low = "blue", high = "red") +
  labs(title = "Density Plot: Weight vs MPG", x = "Weight", y = "Miles Per Gallon")

# Print plots
print(overplot_scatter)
print(scatter_alpha)
print(scatter_jitter)
print(density_plot)


