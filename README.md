# Cardio Health Data Analysis

This project conducts statistical analysis and visualizations on cardiovascular health data using R. The analysis includes:
- Descriptive statistics (standard deviation, standard error)
- T-tests to assess differences between groups (e.g., cholesterol by gender)
- Correlation analysis using Pearson and Spearman correlation
- Data visualization using ggplot2 and heatmaps

## Project Files
- `analysis_script.R`: The main R script that performs the analysis
- `cardio_train.csv`: The dataset used in the analysis (not provided here)

## Dataset Information
The dataset consists of the following variables:
- `id`: Patient identifier
- `age`: Age of the patient
- `gender`: Gender (1 = Male, 2 = Female)
- `height`: Height in centimeters
- `weight`: Weight in kilograms
- `ap_hi`: Systolic blood pressure
- `ap_lo`: Diastolic blood pressure
- `cholesterol`: Cholesterol level (1 = normal, 2 = above normal, 3 = well above normal)
- `gluc`: Glucose level
- `smoke`: Smoking status (0 = No, 1 = Yes)
- `alco`: Alcohol consumption (0 = No, 1 = Yes)
- `active`: Physical activity (0 = No, 1 = Yes)
- `cardio`: Presence of cardiovascular disease (0 = No, 1 = Yes)

## Analysis Overview

### 1. Data Preprocessing
- Missing values are removed using `na.omit()`.
- `gender` is converted to a factor for categorical analysis.

### 2. Descriptive Statistics
- Variance is calculated for `height` and `weight`.
- A summary table is generated for key variables (`cholesterol`, `weight`, `ap_hi`, `ap_lo`, `gluc`) showing their standard deviation (SD) and standard error (SE).

### 3. T-Tests
- **Cholesterol by Gender**: `t.test(cholesterol ~ gender)` to compare cholesterol levels between males and females.
- **Systolic Blood Pressure by Weight**: `t.test(ap_hi ~ weight)` to examine the relationship between systolic blood pressure and weight.
- **Physical Activity by Cardiovascular Disease**: `t.test(active ~ cardio)` to assess activity differences between people with and without cardiovascular disease.

### 4. Correlation Analysis
- **Pearson Correlation**: Examines linear relationships between variables (`height`, `weight`, `ap_hi`, `ap_lo`, `cholesterol`, `gluc`).
- **Spearman Correlation**: Examines rank-based relationships between the same variables.
- Heatmaps of both correlation matrices are generated using the `pheatmap` package.

### 5. Data Visualization
- **Boxplot of Cholesterol by Gender**: Visualizes cholesterol distribution for each gender using `ggplot2`.
- **Scatter Plot of Cholesterol vs. Systolic Blood Pressure**: Colored by gender, visualizing the relationship between cholesterol and systolic blood pressure.

## How to Run the Analysis

1. **Install Required Libraries**:
   - `ggplot2`
   - `pheatmap`
   - `reshape`

   You can install these packages by running:
   ```r
   install.packages(c("ggplot2", "pheatmap", "reshape"))
