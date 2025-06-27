PO_model <- lm(PO.Inn ~ cteamfbpct + Sprint.Speed + Throws, data = tm_adj_of_data)
summary(PO_model)

OAA_model <- lm(OAA.Inn ~  cteamfbpct + Sprint.Speed + Throws, data = tm_adj_of_data)
summary(OAA_model)
