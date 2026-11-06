# MB5370 - Programming Fundamentals for Marine Science
# Module 1 - Workshop 2
# Topic: Data Visualisation in R
# Student: Trisha Waghela

# Workshop 2 - Basic Data Visualisation

# Example coral colony diameters (cm)
coral_diameters <- c(12.5, 15.2, 10.8, 18.4, 14.1)

# Create a scatter plot
plot(
  coral_diameters,
  main = "Coral Colony Diameters",
  xlab = "Colony Number",
  ylab = "Diameter (cm)",
  col = "blue",
  pch = 19
)

# Workshop 2 - Histogram

hist(
  coral_diameters,
  main = "Distribution of Coral Colony Diameters",
  xlab = "Coral Diameter (cm)",
  ylab = "Frequency",
  col = "lightblue",
  border = "black"
)
# Workshop 2 - Boxplot

boxplot(
  coral_diameters,
  main = "Coral Colony Diameter Distribution",
  ylab = "Diameter (cm)",
  col = "lightgreen",
  border = "black"
)
# Workshop 2 - Bar Chart

# Example coral genus observations
coral_genera <- c(
  "Acropora", "Porites", "Acropora",
  "Montipora", "Porites"
)

# Count colonies by genus
genus_counts <- table(coral_genera)

# Create a bar chart
barplot(
  genus_counts,
  main = "Number of Colonies by Coral Genus",
  xlab = "Coral Genus",
  ylab = "Number of Colonies",
  col = "lightblue",
  border = "black"
)
# Workshop 2 - Introduction to ggplot2

# Load the ggplot2 package
library(ggplot2)

# Create a practice dataset
coral_df <- data.frame(
  Colony = 1:5,
  Diameter_cm = c(12.5, 15.2, 10.8, 18.4, 14.1)
)

# Create a scatter plot using ggplot2
ggplot(coral_df, aes(x = Colony, y = Diameter_cm)) +
  geom_point(color = "blue", size = 3) +
  labs(
    title = "Coral Colony Diameters",
    x = "Colony Number",
    y = "Diameter (cm)"
  ) +
  theme_minimal()
# Workshop 2 - Customising ggplot2

ggplot(coral_df, aes(x = Colony, y = Diameter_cm)) +
  geom_point(color = "darkred", size = 4) +
  geom_line(color = "grey50", linewidth = 0.8) +
  labs(
    title = "Variation in Coral Colony Diameters",
    subtitle = "Illustrative coral measurements",
    x = "Colony Number",
    y = "Diameter (cm)"
  ) +
  theme_classic()
# Workshop 2 - Export a figure

ggsave(
  filename = "output/Coral_Diameter_Plot.png",
  plot = last_plot(),
  width = 7,
  height = 5,
  units = "in",
  dpi = 300
)

