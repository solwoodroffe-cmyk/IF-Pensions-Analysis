# Public Service Pension Spending Analysis

## Overview

This repository contains two complementary R analyses of UK public service pension payments over time. The analyses use data from the Office for National Statistics (ONS) and produce professional-quality visualizations in the Intergenerational Foundation house style.

## Contents

### Analysis Scripts
- **Real_Term_Spend_Analysis.R** - Total real-term pension spending (1998-2025)
- **Public_Service_Pensions_Per_WorkingAge.R** - Per working-age adult analysis (1998-2025)

### Data
- **CSV ONS Public Service Pensions Payment.csv** - ONS data source (1998-2025 with quarterly and monthly breakdowns)

### Output Visualizations
- **Public_Service_Pensions_Spending.png** - Total spending chart
- **Public_Service_Pensions_Per_WorkingAge.png** - Per working-age adult chart

## Data Source

Data sourced from the Office for National Statistics (ONS):
- **Dataset**: CG: Net social benefits: Public service pension payments (£m CPNSA)
- **Coverage**: 1998-2025 (annual, quarterly, and monthly data)
- **Real prices**: Adjusted to 2024 prices using GDP deflator

## Requirements

To run these scripts, you will need:

- **R** (version 4.0 or higher recommended)
- **RStudio** (optional but recommended)
- The following R package:
  - `ggplot2` (for visualization)

## Installation

1. Install R from https://cran.r-project.org/
2. Open RStudio (or R console)
3. Install the required package by running:
```r
install.packages("ggplot2")
```

## How to Use

### Running the Scripts

1. Download all files to a local folder
2. Open either R script in RStudio
3. Update the `setwd()` line if needed to match your working directory
4. Click **Source** (or press Ctrl+Shift+S) to run the script
5. The visualization will appear in the Plots pane and be saved as PNG

### Real-Term Spend Analysis
**File**: `Real_Term_Spend_Analysis.R`

This script analyzes **total real-term pension spending** over time.

**Output**:
- Line chart showing annual pension spending from 1998-2025
- Y-axis: £ billions (2024 prices)
- Summary statistics: total growth and average annual increase
- PNG output: 30×20 cm, 300 dpi

**Key Findings**:
- Initial spending (1998): £21.4 billion
- Final spending (2025): £54.3 billion
- Total increase: **153.7%**
- Average annual increase: 5.69%

### Per Working-Age Adult Analysis
**File**: `Public_Service_Pensions_Per_WorkingAge.R`

This script analyzes **spending per working-age adult** over time, accounting for population changes.

**Output**:
- Line chart showing per-capita pension spending from 1998-2025
- Y-axis: £ per working-age adult (2024 prices)
- Summary statistics: total growth and average annual increase
- PNG output: 30×20 cm, 300 dpi

**Key Findings**:
- Initial spending per person (1998): £580
- Final spending per person (2025): £1,254
- Total increase: **116.1%**
- Average annual increase: 4.3%

## Interpretation

These two analyses tell complementary stories:

1. **Real-Term Spend Analysis** shows how total pension expenditure has grown
2. **Per Working-Age Adult Analysis** shows how this burden has changed per taxpayer/worker

The different growth rates (153.7% vs 116.1%) reflect population changes over this period.

## Code Features

Both scripts include:
- Professional IF house styling with brand color (#82335c)
- Automatic handling of comma-separated values
- Clean, publication-ready formatting
- Light horizontal gridlines (no vertical gridlines)
- Flexible parameters for easy customization
- Summary statistics calculation
- Debugging output for data verification

## Customization

To modify either visualization, edit these parameters in the script:

- **Color**: Change `#82335c` to any hex color code
- **Title/labels**: Edit the `labs()` section
- **Year breaks**: Modify `breaks = seq(2000, 2025, by = 5)`
- **Output size**: Change `width = 30, height = 20` in `ggsave()`
- **Y-axis breaks**: Adjust `scale_y_continuous(breaks = ...)` 

## Notes

- All values presented in 2024 prices using GDP deflator (100 = 2024)
- Data for 2025 is included (most recent available)
- Population data sourced from ONS population projections
- Scripts automatically remove commas and whitespace from numerical values

## Support

For questions or issues, please contact the development team.

## License

© Intergenerational Foundation 2026

---

**Last updated**: February 2026

