# MB5370 - Programming Fundamentals for Marine Science
# Module 1 - Workshop 1
# Student: Trisha Waghela
# Topic: Introduction to R Programming
# Workshop 1 - Basic calculations

2 + 3
10 * 5
20 / 4
2^3
# Workshop 1 - Variables and Data Types

# Store the number of coral colonies
coral_colonies <- 25

# Store the average colony diameter (cm)
colony_diameter <- 12.5

# Store the coral genus
coral_genus <- "Acropora"

# Display the values
coral_colonies
colony_diameter
coral_genus
# Workshop 1 - Vectors

# Create a numeric vector of coral diameters (cm)
coral_diameters <- c(12.5, 15.2, 10.8, 18.4, 14.1)

# Display the vector
coral_diameters

# Calculate summary statistics
mean(coral_diameters)
min(coral_diameters)
max(coral_diameters)
length(coral_diameters)

# Workshop 1 - Vector Indexing

# Select the first coral diameter
coral_diameters[1]

# Select the third coral diameter
coral_diameters[3]

# Select the first three measurements
coral_diameters[1:3]

# Select measurements greater than 14 cm
coral_diameters[coral_diameters > 14]

# Workshop 1 - Data Frames

# Create a data frame of coral observations
coral_data <- data.frame(
  Colony_ID = 1:5,
  Genus = c("Acropora", "Porites", "Acropora",
            "Montipora", "Porites"),
  Diameter_cm = coral_diameters
)

# Display the data frame
coral_data

# View its structure
str(coral_data)

# Calculate summary statistics
summary(coral_data)

# Workshop 1 - Factors

# Convert coral genus into a categorical variable
coral_data$Genus <- as.factor(coral_data$Genus)

# Check the updated data structure
str(coral_data)

