# Boxplot: Cholesterol by Gender
ggplot(x , aes(x = as.factor(gender), y = cholesterol, fill = gender)) + geom_boxplot()

# Scatter Plot: Cholesterol vs Systolic Blood Pressure
ggplot(x , aes(x = cholesterol, y = ap_hi, color = gender)) + 
  scale_color_manual(values = c("1" = "blue", "2" = "red"), labels = c("1" = "Male", "2" = "Female")) +
  geom_point()
