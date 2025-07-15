library(tidyverse)
library(dplyr)

setwd("/Users/lukewamboldt/Desktop/R-Projects/Baseball-Projects/corner-outfield-handedness")

of_data <- rbind(lf_data, rf_data)

of_data <- of_data %>%
  mutate(Throws = ifelse(Pos == "LF" & Throws_LR == "L", 1, ifelse(Pos == "RF" & Throws_LR == "R", 1, 0)))

ind <- match(of_data$Team, team_data$Team)

of_data <- of_data %>%
  mutate(teamFB.Inn = team_data$cFB.IP[ind])

adjusted_of_data <- of_data %>%
  select(Name, Team, Pos, Throws_LR, Throws, PO.Inn, Sprint_Speed, teamFB.Inn) %>%
  filter(!is.na(teamFB.Inn)) %>%
  arrange(desc(PO.Inn))

save(adjusted_of_data, file = "rda/adjusted_of_data.rda")
