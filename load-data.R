library(tidyverse)
library(dplyr)

setwd("/Users/lukewamboldt/Desktop/R-Projects/Baseball-Projects/corner-outfield-handedness")

lf_data <- read.csv("data/2024 Corner Outfield Handedness Data - LF.csv")
rf_data <- read.csv("data/2024 Corner Outfield Handedness Data - RF.csv")
team_data <- read.csv("data/2024 Corner Outfield Handedness Data - Team.csv")