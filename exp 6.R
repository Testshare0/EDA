library(ggplot2)
library(GGally)
library(plotly)
#install.packages("plotly")
# Using built-in 'iris' dataset
data(iris)

# Faceted Scatter Plot - Petal Length vs Petal Width grouped by Species
faceted_scatter <- ggplot(iris, aes(x = Petal.Length, y = Petal.Width, color = Species)) +
  geom_point() +
  facet_wrap(~Species) +
  labs(title = "Faceted Scatter Plot: Petal Length vs Petal Width", x = "Petal Length", y = "Petal Width")

# 3D Scatter Plot - Sepal Length, Sepal Width, and Petal Length
plot_3d <- plot_ly(iris, x = ~Sepal.Length, y = ~Sepal.Width, z = ~Petal.Length, color = ~Species, type = "scatter3d", mode = "markers")

# Pair Plot - Multivariate relationships
pair_plot <- ggpairs(iris, columns = 1:4, mapping = aes(color = Species))

# Print plots
print(faceted_scatter)
print(pair_plot)
plot_3d