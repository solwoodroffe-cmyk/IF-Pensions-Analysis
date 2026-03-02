library(ggplot2)

setwd("c:/Users/solwo/OneDrive/Desktop/Applications and opportunities/Work for Intergenerational foundation/Rprojects")

## Load and extract NHS Pensioner section
raw <- read.csv("NHS pensions FOI data.csv", header = FALSE, stringsAsFactors = FALSE)
# NHS Pensioner section is rows 3:5, columns 2:11
years <- as.numeric(gsub("YE ", "", raw[2, 2:11]))
nhs_data <- raw[3:5, 2:11]
# Convert all values to numeric after removing commas
nhs_data_numeric <- apply(nhs_data, c(1,2), function(x) as.numeric(gsub(",", "", x)))
total_pensioners <- colSums(nhs_data_numeric, na.rm = TRUE)

df <- data.frame(
  Year = years,
  Pensioners = total_pensioners / 1000  # Show in thousands
)

p <- ggplot(df, aes(x = Year, y = Pensioners)) +
  geom_line(color = "#82335c", linewidth = 1.5) +
  labs(
    title = "Total NHS Pensioners",
    x = "Year",
    y = "Number of Pensioners (000)"
  ) +
  scale_x_continuous(breaks = seq(2015, 2024, by = 1)) +
  scale_y_continuous(breaks = seq(30, 75, by = 10), limits = c(30, 75)) +
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
ggsave("NHS_Pensioners_Over_Time.png", plot = p, width = 30, height = 20, units = "cm", dpi = 300, device = "png")
