# Function to Calculate SD and SE
calculate_sd <- function(column) {
  sd_value <- sd(column)
  return(sd_value)
}
calculate_se <- function(column) {
  n <- length(column)
  sd_value <- sd(column)
  se_value <- sd_value / sqrt(n)
  return(se_value)
}

# Summary Table for SD and SE
columns_to_analyze <- c("cholesterol", "weight", "ap_hi", "ap_lo", "gluc")
summary_table <- data.frame(Column = character(), SD = numeric(), SE = numeric(), stringsAsFactors = FALSE)

for (col in columns_to_analyze) {
  sd_value <- calculate_sd(x[[col]])
  se_value <- calculate_se(x[[col]])
  summary_table <- rbind(summary_table, data.frame(Column = col, SD = sd_value, SE = se_value))
}

print(summary_table)
