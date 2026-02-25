# Load required packages
library(ggplot2)

# Set working directory
setwd("c:/Users/solwo/OneDrive/Desktop/Applications and opportunities/Work for Intergenerational foundation/Rprojects")

# Load the dataset - skip the first 7 rows to get to the proper headers
df <- read.csv("CSV ONS Public Service Pensions Payment.csv", skip = 7, stringsAsFactors = FALSE)

# Debug: Print column names to ensure correct matching
print(colnames(df))

# Extract only the annual data (rows with years 1998-2025) using base R
# Filter for rows where Important.notes is a 4-digit year
years_mask <- grepl("^[0-9]{4}$", df$Important.notes)
df <- df[years_mask, ]

# Select and rename columns using base R
df <- data.frame(
  Year = as.numeric(df$Important.notes),
  SpendingPerPerson = as.numeric(gsub(",", "", df$Real.spending.per.working.age.adult))
)

# Remove NA values and sort
df <- df[!is.na(df$SpendingPerPerson), ]
df <- df[order(df$Year), ]

# Debugging: Check data before plotting
print(head(df))
print(summary(df$SpendingPerPerson))
print(unique(df$Year))

# Plot the time series data
p <- ggplot(df, aes(x = Year, y = SpendingPerPerson)) +
  geom_line(color = "#82335c", linewidth = 1.5) +  # Continuous line, increased thickness
  labs(
    x = "\nYear",
    y = "£ per working-age adult (2024 prices)\n",
    title = "Real public service pension spending per working-age adult, 1998–2025\n(£2024 prices)"
  ) +
  theme_classic() +
  scale_y_continuous(breaks = seq(600, 1400, by = 200), limits = c(600, 1300)) +  # Clean, round tick marks
  scale_x_continuous(breaks = seq(2000, 2025, by = 5)) +  # Show every 5 years
  theme(
    plot.title = element_text(family = "sans", color = "black", face = "bold", size = 14, hjust = 0.5,
                              margin = margin(b = 20)),
    plot.title.position = "plot",
    axis.title.y = element_text(family = "sans", color = "black", face = "italic", size = 14),
    axis.title.x = element_text(family = "sans", color = "black", face = "italic", size = 14, margin = margin(t = 5, b = 10)),
    axis.text.y = element_text(family = "sans", color = "#333333", size = 12, face = "bold"),
    axis.text.x = element_text(family = "sans", color = "#333333", size = 11, angle = 45, hjust = 1, vjust = 1, face = "bold"),
    panel.background = element_rect(fill = "white"),
    panel.grid.major.y = element_line(color = "#e0e0e0", linewidth = 0.3),  # Light horizontal gridlines
    panel.grid.major.x = element_blank(),  # No vertical gridlines
    panel.grid.minor = element_blank(),  # No minor gridlines
    plot.margin = margin(2.5, 0.5, 2, 0.5, "cm"),
    plot.background = element_rect(fill = "white", colour = "white", linewidth = 1)
  )

# Display the plot
print(p)

# Calculate and display summary statistics
total_increase <- (df$SpendingPerPerson[nrow(df)] - df$SpendingPerPerson[1]) / df$SpendingPerPerson[1] * 100
avg_annual_increase <- total_increase / (nrow(df) - 1)

cat("\n=== Summary Statistics ===\n")
cat("Period:", df$Year[1], "to", df$Year[nrow(df)], "\n")
cat("Initial spending per person (", df$Year[1], "):£", format(df$SpendingPerPerson[1], big.mark=","), "\n", sep = "")
cat("Final spending per person (", df$Year[nrow(df)], "):£", format(df$SpendingPerPerson[nrow(df)], big.mark=","), "\n", sep = "")
cat("Total increase:", round(total_increase, 1), "%\n")
cat("Average annual increase:", round(avg_annual_increase, 2), "%\n")

# Save the figure
ggsave("Public_Service_Pensions_Per_WorkingAge.png",
       plot = p, width = 30, height = 20, units = "cm", dpi = 300, device = "png")

# Add IF branding (if the IF_branding function is available)
# Uncomment the line below if you have the IF_branding function installed
# IF_branding(
#   "Public_Service_Pensions_Per_WorkingAge.png",
#   "Source: Office for National Statistics.\n© Intergenerational Foundation 2026 www.if.org.uk",
#   text_size = 35,
#   caption_position = "+30+2200",
#   delete_original = TRUE
# )
