
# Hotel Bookings Data Analysis

This repository contains an R script for performing a comprehensive data analysis of hotel bookings, utilizing various data visualization techniques. The analysis explores trends, average daily rates, reservation statuses, and customer behavior through different chart types. The visualizations are built using popular R packages such as `ggplot2`, `dplyr`, `treemap`, and `plotly`.

## Problem Statement

The dataset consists of hotel booking records, including details such as booking dates, hotel type, customer type, and average daily rate (ADR). The goal is to derive meaningful insights from the data through various visualizations:

1. **Monthly booking trends by year** to examine the seasonality and patterns.
2. **Average daily rate (ADR) by customer type** to understand how different customer segments are charged.
3. **Reservation statuses** distribution to identify the proportion of cancellations, checkouts, etc.
4. **Boxplot of ADR by hotel type** to show the spread and distribution of prices for different hotel types.
5. **Sunburst chart** to explore relationships between hotels, meals, and customer types.
6. **Treemap of top 10 countries by ADR** to visualize the average daily rates for countries with the highest rates.

## Dependencies

Make sure the following packages are installed in your R environment:

- **ggplot2**
- **dplyr**
- **treemap**
- **scales**
- **plotly**
- **treemapify**

To install these dependencies, run the following command in your R console:

```r
install.packages(c("ggplot2", "dplyr", "treemap", "scales", "plotly", "treemapify"))
```

## How to Run

1. Load the dataset into R:

```r
data <- read.csv("hotel_bookings.csv")
```

2. Ensure that the required R packages are installed.
3. Run the script to generate the visualizations described below.

## Visualizations

1. **Monthly Booking Trends by Year (Line Chart)**: 
   - Visualizes booking trends by month and year, allowing you to analyze seasonality.
   
2. **Average Daily Rate by Customer Type (Bar Chart)**:
   - Compares the average daily rate (ADR) for different customer types, providing insights into pricing strategies.

3. **Reservation Statuses (Pie Chart)**:
   - Displays the breakdown of different reservation statuses (e.g., canceled, checked-out) as a pie chart.

4. **ADR Distribution by Hotel Type (Box Plot)**:
   - Shows the spread and distribution of ADR values for resort and city hotels.

5. **Sunburst Chart (Hotel -> Meal -> Customer Type)**:
   - An interactive sunburst chart illustrating the hierarchical relationship between hotel type, meal type, and customer type.

6. **Treemap of Top 10 Countries by ADR**:
   - A treemap visualizing the average daily rates for the top 10 countries, based on ADR.

## To Run the Analysis

Execute the following commands in your R environment to generate the respective charts. Each visualization is ready to be plotted based on the data provided in `hotel_bookings.csv`.

For example, to generate the line chart for monthly booking trends:

```r
ggplot(monthly_trends, aes(x = as.Date(month_year, "%Y-%m"), y = bookings)) +
  geom_line(color = "blue") +
  labs(title = "Monthly Booking Trends", x = "Month", y = "Number of Bookings") +
  theme_minimal()
```

## Course

For analysis under the course: [Course Name], under the supervision of [Instructor Name].
