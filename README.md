# Public Service Pension Payments Analysis

## Overview

This repository contains R code to analyze and visualize UK public service pension payments over time in real terms (2024 prices). The analysis uses data from the Office for National Statistics (ONS) and produces professional-quality visualizations in the Intergenerational Foundation house style.

## Contents

- **Public_Service_Pensions_Analysis.R** - Main R script for data processing and visualization
- **CSV ONS Public Service Pensions Payment.csv** - ONS data file (1998-2025)
- **Public_Service_Pensions_Spending.png** - Output visualization

## Data Source

Data sourced from the Office for National Statistics (ONS):
- **Dataset**: CG: Net social benefits: Public service pension payments (£m CPNSA)
- **Coverage**: 1998-2025 (annual data)
- **Real prices**: Adjusted to 2024 prices using GDP deflator

## Requirements

To run this script, you will need:

- **R** (version 4.0 or higher recommended)
- **RStudio** (optional but recommended)
- The following R packages:
  - `ggplot2` (for visualization)

## Installation

1. Install R from https://cran.r-project.org/
2. Open RStudio (or R console)
3. Install required packages by running:
```r
install.packages("ggplot2")
```

## How to Use

1. Download all files to a local folder
2. Open `Public_Service_Pensions_Analysis.R` in RStudio
3. Update the `setwd()` line in the script to match your working directory
4. Click **Source** (or press Ctrl+Shift+S) to run the script
5. The visualization will appear in the Plots pane and be saved as PNG

## Output

The script generates:
- **Visualization**: Line chart showing pension payment trends over time
- **PNG file**: `Public_Service_Pensions_Spending.png` (30×20 cm, 300 dpi)
- **Summary statistics**: Console output showing total and average growth rates

### Key Findings (1998-2025)

- Initial spending (1998): £21,394 million (2024 prices)
- Final spending (2025): £54,285 million (2024 prices)
- **Total increase: 154%**

## Code Features

- Professional IF house styling with brand color (#82335c)
- Automatic handling of comma-separated values in raw data
- Flexible date range (easily customizable)
- Clean, well-commented code for reproducibility
- Summary statistics calculation

## Customization

To modify the visualization, you can edit these parameters in the script:

- **Color**: Change `#82335c` to any hex color code
- **Title/labels**: Edit the `labs()` section
- **Year breaks**: Modify `breaks = seq(2000, 2025, by = 5)`
- **Output size**: Change `width = 30, height = 20` in `ggsave()`

## Notes

- The script automatically removes commas and whitespace from numerical values
- Data for 2025 is included (most recent available)
- All values presented in 2024 prices using GDP deflator

## Support

For questions or issues, please contact the development team.

## License

© Intergenerational Foundation 2026

---

**Last updated**: February 2026
