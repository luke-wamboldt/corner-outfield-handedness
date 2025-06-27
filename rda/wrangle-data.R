of_data <- rbind(lf_data, rf_data)

of_data <- of_data %>%
  mutate(Throws = ifelse(Pos == "LF" & Throws..R.L. == "L", 1, ifelse(Pos == "RF" & Throws..R.L. == "R", 1, 0)))

ind <- match(of_data$Team, team_data$Team)

of_data <- of_data %>%
  mutate(cteamfbpct = team_data$Catchable.FB.[ind])

tm_adj_of_data <- of_data %>%
  filter(!is.na(cteamfbpct)) %>%
  mutate(cteamfbpct = as.numeric(gsub("%", "", cteamfbpct)))

save(tm_adj_of_data, file = "rda/tm_adj_of_data.rda")