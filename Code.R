# Load required libraries
library(ggplot2)
library(dplyr)
library(treemap)
library(plotly)

# Load the dataset
hotel_data <- read.csv("D:\DEPI\Project 4\hotel_bookings.csv")

# Data Cleaning: Replace NA values for "agent" and "company"
hotel_data$agent[is.na(hotel_data$agent)] <- 0
hotel_data$company[is.na(hotel_data$company)] <- 0

# 1. Plot: Cancellation Rate by Hotel Type
hotel_data %>%
  group_by(hotel, is_canceled) %>%
  summarise(count = n()) %>%
  ggplot(aes(x = hotel, y = count, fill = factor(is_canceled))) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Cancellation Rate by Hotel Type", x = "Hotel Type", y = "Count", fill = "Cancelled") +
  scale_fill_manual(values = c("0" = "blue", "1" = "red")) +
  theme_minimal()

# 2. Treemap: Distribution of Market Segments
treemap_data <- hotel_data %>%
  group_by(market_segment) %>%
  summarise(count = n())

treemap(treemap_data, index = "market_segment", vSize = "count", 
        title = "Distribution of Market Segments", palette = "Set3")

# 3. NEW: Average ADR by Customer Type (Bar Plot)
hotel_data %>%
  group_by(customer_type) %>%
  summarise(avg_adr = mean(adr, na.rm = TRUE)) %>%
  ggplot(aes(x = customer_type, y = avg_adr, fill = customer_type)) +
  geom_col() +
  labs(title = "Average ADR by Customer Type", x = "Customer Type", y = "Average ADR") +
  theme_minimal()

# 4. Lead Time Distribution (using ggplot)
ggplot(hotel_data, aes(x = lead_time)) +
  geom_histogram(binwidth = 70, fill = 'green', color = 'black') +
  labs(title = "Lead Time Distribution", x = "Lead Time (days)", y = "Count") +
  theme_minimal()

# 5. NEW: Booking Changes Distribution
ggplot(hotel_data, aes(x = booking_changes)) +
  geom_bar(fill = 'steelblue') +
  labs(title = "Distribution of Booking Changes", x = "Booking Changes", y = "Count") +
  theme_minimal()

# 6. NEW: Proportion of Cancellations by Market Segment
hotel_data %>%
  group_by(market_segment, is_canceled) %>%
  summarise(count = n()) %>%
  ggplot(aes(x = market_segment, y = count, fill = factor(is_canceled))) +
  geom_bar(stat = "identity", position = "fill") +
  labs(title = "Proportion of Cancellations by Market Segment", y = "Proportion", x = "Market Segment", fill = "Cancelled") +
  scale_fill_manual(values = c("0" = "green", "1" = "orange")) +
  theme_minimal()

# 7. NEW: Average Lead Time by Customer Type
hotel_data %>%
  group_by(customer_type) %>%
  summarise(avg_lead_time = mean(lead_time, na.rm = TRUE)) %>%
  ggplot(aes(x = customer_type, y = avg_lead_time, fill = customer_type)) +
  geom_col() +
  labs(title = "Average Lead Time by Customer Type", x = "Customer Type", y = "Average Lead Time (days)") +
  theme_minimal()

# 8. NEW: ADR Trend Over Time (Line Plot)
hotel_data$date <- as.Date(paste(hotel_data$arrival_date_year, hotel_data$arrival_date_month, 1, sep = "-"), "%Y-%B-%d")

hotel_data %>%
  group_by(date) %>%
  summarise(avg_adr = mean(adr, na.rm = TRUE)) %>%
  ggplot(aes(x = date, y = avg_adr)) +
  geom_line(color = "blue") +
  geom_point(color = "red") +
  labs(title = "ADR Trend Over Time", x = "Date", y = "Average ADR") +
  theme_minimal()

