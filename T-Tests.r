# T-Test: Cholesterol by Gender
t_test_result_ChGe = t.test(cholesterol ~ gender, x)
print(t_test_result_ChGe)

# T-Test: Systolic Blood Pressure by Weight
t_test_result_WeBeat <- t.test(ap_hi ~ weight, x)
print(t_test_result_WeBeat)

# T-Test: Physical Activity by Cardiovascular Disease
t_test_result_CaAc <- t.test(active ~ cardio, x)
print(t_test_result_CaAc)
