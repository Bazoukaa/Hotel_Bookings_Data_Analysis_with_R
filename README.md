
# Hotel Bookings Data Analysis

This repository contains an analysis of hotel bookings data using R. The analysis includes visualizations created using various R libraries to explore different trends, patterns, and distributions related to hotel bookings.

## Dataset

The dataset used in this analysis is `hotel_bookings.csv`, which contains information about hotel bookings, such as hotel type, booking cancellation status, lead time, and average daily rates (ADR). The dataset is loaded directly in the R script and cleaned to handle missing values.

## Libraries Used

The following R libraries are required to run the analysis:

- **ggplot2**: For creating elegant data visualizations.
- **dplyr**: For data manipulation.
- **treemap**: For creating treemap visualizations.
- **plotly**: For adding interactivity to the plots.

## Data Cleaning

Before starting the analysis, we perform some basic data cleaning:

- Missing values in the `agent` and `company` columns are replaced with `0`.

## Visualizations

Below is a list of the visualizations included in this analysis:

### 1. **Cancellation Rate by Hotel Type**
   - A bar plot that shows the number of canceled and non-canceled bookings for each hotel type (City Hotel or Resort Hotel).
   - **Plot type**: Bar Plot (Grouped)
   - **Libraries used**: ggplot2, dplyr

### 2. **Distribution of Market Segments**
   - A treemap that visualizes the distribution of bookings across different market segments.
   - **Plot type**: Treemap
   - **Libraries used**: treemap, dplyr

### 3. **Average ADR by Customer Type**
   - A bar plot that shows the average ADR (Average Daily Rate) for different customer types.
   - **Plot type**: Bar Plot
   - **Libraries used**: ggplot2, dplyr

### 4. **Lead Time Distribution**
   - A histogram that displays the distribution of lead times (number of days between booking and arrival).
   - **Plot type**: Histogram
   - **Libraries used**: ggplot2

### 5. **Booking Changes Distribution**
   - A bar plot that shows the distribution of booking changes.
   - **Plot type**: Bar Plot
   - **Libraries used**: ggplot2

### 6. **Proportion of Cancellations by Market Segment**
   - A stacked bar plot that displays the proportion of cancellations for each market segment.
   - **Plot type**: Stacked Bar Plot (Proportion)
   - **Libraries used**: ggplot2, dplyr

### 7. **Average Lead Time by Customer Type**
   - A bar plot showing the average lead time for each customer type.
   - **Plot type**: Bar Plot
   - **Libraries used**: ggplot2, dplyr

### 8. **ADR Trend Over Time**
   - A line plot showing the trend of ADR (Average Daily Rate) over time.
   - **Plot type**: Line Plot with Points
   - **Libraries used**: ggplot2, dplyr

## How to Run

1. Ensure you have the required libraries installed. You can install the necessary packages by running:

   ```R
   install.packages(c("ggplot2", "dplyr", "treemap", "plotly"))
   ```

2. Load the dataset (`hotel_bookings.csv`) into your working directory.

3. Run the R script (`hotel_bookings_analysis.R`) to generate the visualizations. The script will load the data, clean it, and generate the above-mentioned plots.

## Requirements

- R (version 3.6 or higher)
- ggplot2
- dplyr
- treemap
- plotly

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

## Author

This analysis was created by [Your Name]. Feel free to reach out with any questions or suggestions.
