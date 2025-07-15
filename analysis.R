PO_model <- lm(PO.Inn ~ Throws + Sprint_Speed + teamFB.Inn, data = adjusted_of_data)
summary(PO_model)
