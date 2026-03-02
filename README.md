# Public Service Pension Spending Analysis

## Overview

This repository contains complementary R analyses of UK public service pension payments and NHS pension data over time. The analyses use data from the Office for National Statistics (ONS) and NHS Freedom of Information requests, producing professional-quality visualizations in the Intergenerational Foundation house style.

## Contents

### Analysis Scripts

#### Public Service Pensions (ONS)
- **Real_Term_Spend_Analysis.R** - Total real-term pension spending (1998-2025)
- **Public_Service_Pensions_Per_WorkingAge.R** - Per working-age adult analysis (1998-2025)

#### NHS Pensions (FOI Data)
- **NHS_Pensioners_Analysis.R** - Total NHS pensioners over time (2015-2024)
- **NHS_Pensioners_Over_100k.R** - NHS pensioners earning over £100,000 (2015-2024)
- **NHS_Pensioners_By_Salary_Bracket.R** - NHS pensioners by income bracket (2015-2024)
- **NHS_Pensioners_By_Earnings_Threshold.R** - NHS pensioners by earnings threshold (2015-2024)

### Data
- **CSV ONS Public Service Pensions Payment.csv** - ONS data source (1998-2025 with quarterly and monthly breakdowns)
- **NHS pensions FOI data.csv** - NHS pension data by salary bracket (2015-2024)

### Output Visualizations
- **Public_Service_Pensions_Spending.png** - Total spending chart
- **Public_Service_Pensions_Per_WorkingAge.png** - Per working-age adult chart
- **NHS_Pensioners_Over_Time.png** - Total NHS pensioners chart
- **NHS_Pensioners_Over_100k.png** - High-earning NHS pensioners chart
- **NHS_Pensioners_By_Salary_Bracket.png** - Multi-line chart by bracket
- **NHS_Pensioners_By_Earnings_Threshold.png** - Cumulative threshold analysis

## Data Sources

### Office for National Statistics (ONS)
- **Dataset**: CG: Net social benefits: Public service pension payments (£m CPNSA)
- **Coverage**: 1998-2025 (annual, quarterly, and monthly data)
- **Real prices**: Adjusted to 2024 prices using GDP deflator

### NHS Pensions (Freedom of Information)
- **Dataset**: NHS pensioner statistics by salary bracket
- **Coverage**: 2015-2024 (year-end data)
- **Brackets**: £33,000-£49,999 | £50,000-£99,999 | £100,000+
- **Categories**: NHS Pensioner, Child Dependant, Adult Dependant, Pension Credit Member

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

---

## Public Service Pension Analyses

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

---

## NHS Pension Analyses

### Total NHS Pensioners
**File**: `NHS_Pensioners_Analysis.R`

This script shows the **total number of NHS pensioners** across all salary brackets combined over time.

**Output**:
- Single-line chart showing total pensioner count from 2015-2024
- Y-axis: Number of Pensioners (000)
- Summary statistics included
- PNG output: 30×20 cm, 300 dpi

**Key Findings**:
- 2015: 32,449 pensioners
- 2024: 71,578 pensioners
- Total increase: **120.5%**
- Demonstrates significant growth in NHS pension liabilities over the decade

### NHS Pensioners Earning Over £100,000
**File**: `NHS_Pensioners_Over_100k.R`

This script isolates the **high-earning NHS pensioners** (£100,000+) to show the most dramatic growth segment.

**Output**:
- Single-line chart focusing on £100k+ earners from 2015-2024
- Y-axis: Number of Pensioners
- Summary statistics included
- PNG output: 30×20 cm, 300 dpi

**Key Findings**:
- 2015: 223 pensioners earning over £100k
- 2024: 1,885 pensioners earning over £100k
- Total increase: **745.3%**
- Highlights the particularly rapid growth in high-earning pensioner numbers

### NHS Pensioners by Salary Bracket
**File**: `NHS_Pensioners_By_Salary_Bracket.R`

This script displays **three separate lines**, one for each salary bracket, to compare growth rates across income groups.

**Output**:
- Multi-line chart with three lines (£33-50k, £50-100k, £100k+)
- Shows independent growth trajectories for each bracket
- Legend identifies each bracket
- PNG output: 30×20 cm, 300 dpi

**Key Findings**:
- £33k-£50k: Growing steadily (~105% increase)
- £50k-£100k: Accelerating growth (~154% increase)
- £100k+: Exponential growth (~745% increase)
- Demonstrates wealth concentration among NHS pensioners

### NHS Pensioners by Earnings Threshold
**File**: `NHS_Pensioners_By_Earnings_Threshold.R`

This script uses a **cumulative threshold approach**, showing:
- All pensioners (Over £33k)
- High earners (Over £50k)
- Very high earners (Over £100k)

**Output**:
- Multi-line cumulative threshold chart
- Shows how many pensioners cross each earnings level
- Growth rates calculated for each threshold
- PNG output: 30×20 cm, 300 dpi

**Key Findings**:
- Over £33k: 32,449 → 71,578 (+120.5%)
- Over £50k: 15,469 → 39,285 (+154.0%)
- Over £100k: 223 → 1,885 (+745.3%)
- Reveals accelerating growth at higher earnings levels

---

## Interpretation

### Public Service Pensions
These two analyses tell complementary stories:

1. **Real-Term Spend Analysis** shows how total pension expenditure has grown
2. **Per Working-Age Adult Analysis** shows how this burden has changed per taxpayer/worker

The different growth rates (153.7% vs 116.1%) reflect population changes over this period.

### NHS Pensions
The NHS pension analyses reveal:

1. **Total Growth**: NHS pensioner numbers have more than doubled in a decade (120.5% increase)
2. **Disproportionate High-Earner Growth**: The £100k+ earners have grown nearly 8-fold (745%), while lower brackets grow 100-150%
3. **Wealth Concentration**: An increasing proportion of NHS pensioners are earning very high pensions
4. **Policy Implications**: The rapid growth in high-earning pensioners may indicate either:
   - More senior staff retiring
   - Pension scheme increases outpacing inflation
   - Changes in pension eligibility or calculation

## Code Features

All scripts include:
- Professional IF house styling with brand color (#82335c)
- Automatic handling of comma-separated values
- Clean, publication-ready formatting
- Light horizontal gridlines (no vertical gridlines)
- Flexible parameters for easy customization
- Summary statistics calculation
- Debugging output for data verification

## Customization

To modify any visualization, edit these parameters in the script:

- **Color**: Change `#82335c` to any hex color code
- **Title/labels**: Edit the `labs()` section
- **Year breaks**: Modify `breaks = seq(2015, 2024, by = 1)`
- **Output size**: Change `width = 30, height = 20` in `ggsave()`
- **Y-axis breaks**: Adjust `scale_y_continuous(breaks = ...)` 

## Notes

- All ONS values presented in 2024 prices using GDP deflator (100 = 2024)
- NHS data covers 2015-2024 (most recent available)
- NHS figures include pension credit members, dependants, and primary pensioners
- Scripts automatically remove commas and whitespace from numerical values
- NHS data sourced via Freedom of Information request to NHS England

## Support

For questions or issues, please contact the development team.

## License

© Intergenerational Foundation 2026

---

**Last updated**: March 2026

