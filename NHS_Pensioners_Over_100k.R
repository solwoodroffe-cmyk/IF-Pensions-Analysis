library(ggplot2)

setwd("c:/Users/solwo/OneDrive/Desktop/Applications and opportunities/Work for Intergenerational foundation/Rprojects")

# Load and extract NHS Pensioner section
raw <- read.csv("NHS pensions FOI data.csv", header = FALSE, stringsAsFactors = FALSE)
years <- as.numeric(gsub("YE ", "", raw[2, 2:11]))

# Extract only the £100k+ bracket
bracket_100_plus <- as.numeric(gsub(",", "", raw[5, 2:11]))

# Create data frame
df <- data.frame(
  Year = years,
  Pensioners = bracket_100_plus
)

p <- ggplot(df, aes(x = Year, y = Pensioners)) +
  geom_line(color = "#82335c", linewidth = 1.5) +
  labs(
    title = "NHS Pensioners Earning Over £100,000",
    x = "Year",
    y = "Number of Pensioners"
  ) +
  scale_x_continuous(breaks = seq(2015, 2024, by = 1)) +
  scale_y_continuous(breaks = seq(0, 2000, by = 200), limits = c(0, 2000)) +
  theme_classic() +
  theme(
    plot.title = element_text(family = "sans", face = "bold", size = 14, hjust = 0.5),
    axis.title.y = element_text(family = "sans", face = "italic", size = 14),
    axis.title.x = element_text(family = "sans", face = "italic", size = 14),
    axis.text.y = element_text(family = "sans", color = "#333333", size = 12, face = "bold"),
    axis.text.x = element_text(family = "sans", color = "#333333", size = 11, angle = 45, hjust = 1, vjust = 1, face = "bold"),
    panel.background = element_rect(fill = "white"),
    panel.grid.major.y = element_line(color = "#e0e0e0", linewidth = 0.3),
    panel.grid.major.x = element_blank(),
    panel.grid.minor = element_blank(),
    plot.background = element_rect(fill = "white", colour = "white", linewidth = 1)
  )

print(p)
ggsave("NHS_Pensioners_Over_100k.png", plot = p, width = 30, height = 20, units = "cm", dpi = 300, device = "png")

# Summary statistics
cat("\n=== NHS Pensioners Earning Over £100,000 ===\n")
cat("2015: ", bracket_100_plus[1], " pensioners\n", sep = "")
cat("2024: ", bracket_100_plus[10], " pensioners\n", sep = "")
cat("Total increase: ", round((bracket_100_plus[10] - bracket_100_plus[1]) / bracket_100_plus[1] * 100, 1), "%\n", sep = "")
