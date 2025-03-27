
# Load mtcars dataset
  data <- mtcars
  
  # View the first few rows
  head(data)
  install.packages("ggplot2")
  
  
  library(ggplot2)
  #barchart
  ggplot(data, aes(x = factor(cyl))) + 
    geom_bar(fill = "blue") +
    theme_minimal() +
    labs(title = "Count of Cars by Cylinders", x = "Cylinders", y = "Count")
  
  
  #linechart
  ggplot(data, aes(x = seq_along(hp), y = hp)) +
    geom_line(color = "red") +
    geom_point() +
    theme_minimal() +
    labs(title = "Horsepower of Cars", x = "Car Index", y = "Horsepower")
  
  #scatterplot
  ggplot(data, aes(x = hp, y = mpg)) +
    geom_point(color = "purple") +
    theme_minimal() +
    labs(title = "Scatter Plot: Horsepower vs MPG", x = "Horsepower", y = "Miles per Gallon")
  
  #piechart
  # Prepare data
  cyl_count <- table(data$cyl)
  
  # Create Pie Chart
  pie(cyl_count, labels = names(cyl_count), main = "Cylinder Distribution", col = rainbow(length(cyl_count)))
  