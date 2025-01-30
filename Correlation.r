# Pearson Correlation Matrix
pcc_matrix <- cor(x[,c("height", "weight", "ap_hi", "ap_lo", "cholesterol", "gluc")], method = "pearson")
pheatmap(pcc_matrix)

# Spearman Correlation Matrix
scc_matrix <- cor(x[,c("height", "weight", "ap_hi", "ap_lo", "cholesterol", "gluc")], method = "spearman")
pheatmap(scc_matrix)
 
