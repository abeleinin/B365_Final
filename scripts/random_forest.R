nfl <- read.csv("../data/nfl-games2002-2022.csv")

nfl$date <- as.Date(nfl$date, format="%Y-%m-%d")

#Fist half reg season 2002
regular_season_start_2002 <- as.Date("2002-09-05")
regular_season_mid_2002 <- as.Date("2002-11-02")
filtered_data_2002 <- nfl[nfl$date >= regular_season_start_2002 & nfl$date <= regular_season_mid_2002, ]

#First half reg season 2003
regular_season_start_2003 <- as.Date("2003-09-04")
regular_season_mid_2003 <- as.Date("2003-10-31")
filtered_data_2003 <- nfl[nfl$date >= regular_season_start_2003 & nfl$date <= regular_season_mid_2003, ]

# First half reg season 2004
regular_season_start_2004 <- as.Date("2004-09-09")
regular_season_mid_2004 <- as.Date("2004-11-05")
filtered_data_2004 <- nfl[nfl$date >= regular_season_start_2004 & nfl$date <= regular_season_mid_2004, ]

# First half reg season 2005
regular_season_start_2005 <- as.Date("2005-09-08")
regular_season_mid_2005 <- as.Date("2005-11-05")
filtered_data_2005 <- nfl[nfl$date >= regular_season_start_2005 & nfl$date <= regular_season_mid_2005, ]

# First half reg season 2006
regular_season_start_2006 <- as.Date("2006-09-07")
regular_season_mid_2006 <- as.Date("2006-11-03")
filtered_data_2006 <- nfl[nfl$date >= regular_season_start_2006 & nfl$date <= regular_season_mid_2006, ]

# First half reg season 2007
regular_season_start_2007 <- as.Date("2007-09-06")
regular_season_mid_2007 <- as.Date("2007-11-02")
filtered_data_2007 <- nfl[nfl$date >= regular_season_start_2007 & nfl$date <= regular_season_mid_2007, ]

# First half reg season 2008
regular_season_start_2008 <- as.Date("2008-09-04")
regular_season_mid_2008 <- as.Date("2008-10-31")
filtered_data_2008 <- nfl[nfl$date >= regular_season_start_2008 & nfl$date <= regular_season_mid_2008, ]

# First half reg season 2009
regular_season_start_2009 <- as.Date("2009-09-10")
regular_season_mid_2009 <- as.Date("2009-11-06")
filtered_data_2009 <- nfl[nfl$date >= regular_season_start_2009 & nfl$date <= regular_season_mid_2009, ]

# First half reg season 2010
regular_season_start_2010 <- as.Date("2010-09-09")
regular_season_mid_2010 <- as.Date("2010-11-05")
filtered_data_2010 <- nfl[nfl$date >= regular_season_start_2010 & nfl$date <= regular_season_mid_2010, ]

# First half reg season 2011
regular_season_start_2011 <- as.Date("2011-09-08")
regular_season_mid_2011 <- as.Date("2011-11-04")
filtered_data_2011 <- nfl[nfl$date >= regular_season_start_2011 & nfl$date <= regular_season_mid_2011, ]

# First half reg season 2012
regular_season_start_2012 <- as.Date("2012-09-05")
regular_season_mid_2012 <- as.Date("2012-11-02")
filtered_data_2012 <- nfl[nfl$date >= regular_season_start_2012 & nfl$date <= regular_season_mid_2012, ]

# First half reg season 2013
regular_season_start_2013 <- as.Date("2013-09-05")
regular_season_mid_2013 <- as.Date("2013-11-01")
filtered_data_2013 <- nfl[nfl$date >= regular_season_start_2013 & nfl$date <= regular_season_mid_2013, ]

# First half reg season 2014
regular_season_start_2014 <- as.Date("2014-09-04")
regular_season_mid_2014 <- as.Date("2014-10-31")
filtered_data_2014 <- nfl[nfl$date >= regular_season_start_2014 & nfl$date <= regular_season_mid_2014, ]

# First half reg season 2015
regular_season_start_2015 <- as.Date("2015-09-10")
regular_season_mid_2015 <- as.Date("2015-11-06")
filtered_data_2015 <- nfl[nfl$date >= regular_season_start_2015 & nfl$date <= regular_season_mid_2015, ]

# First half reg season 2016
regular_season_start_2016 <- as.Date("2016-09-08")
regular_season_mid_2016 <- as.Date("2016-11-04")
filtered_data_2016 <- nfl[nfl$date >= regular_season_start_2016 & nfl$date <= regular_season_mid_2016, ]

# First half reg season 2017
regular_season_start_2017 <- as.Date("2017-09-07")
regular_season_mid_2017 <- as.Date("2017-11-03")
filtered_data_2017 <- nfl[nfl$date >= regular_season_start_2017 & nfl$date <= regular_season_mid_2017, ]

# First half reg season 2018
regular_season_start_2018 <- as.Date("2018-09-06")
regular_season_mid_2018 <- as.Date("2018-11-02")
filtered_data_2018 <- nfl[nfl$date >= regular_season_start_2018 & nfl$date <= regular_season_mid_2018, ]

# First half reg season 2019
regular_season_start_2019 <- as.Date("2019-09-05")
regular_season_mid_2019 <- as.Date("2019-11-01")
filtered_data_2019 <- nfl[nfl$date >= regular_season_start_2019 & nfl$date <= regular_season_mid_2019, ]

# First half reg season 2020
regular_season_start_2020 <- as.Date("2020-09-10")
regular_season_mid_2020 <- as.Date("2020-11-06")
filtered_data_2020 <- nfl[nfl$date >= regular_season_start_2020 & nfl$date <= regular_season_mid_2020, ]

# First half reg season 2021
regular_season_start_2021 <- as.Date("2021-09-09")
regular_season_mid_2021 <- as.Date("2021-11-08")
filtered_data_2021 <- nfl[nfl$date >= regular_season_start_2021 & nfl$date <= regular_season_mid_2021, ]

# First half reg season 2022
regular_season_start_2022 <- as.Date("2022-09-08")
regular_season_mid_2022 <- as.Date("2022-11-07")
filtered_data_2022 <- nfl[nfl$date >= regular_season_start_2022 & nfl$date <= regular_season_mid_2022, ]

# Combination of filtered data sets into one
all_seasons_data <- rbind(filtered_data_2002, filtered_data_2003, filtered_data_2004, 
                          filtered_data_2005, filtered_data_2006, filtered_data_2007, 
                          filtered_data_2008, filtered_data_2009, filtered_data_2010, 
                          filtered_data_2011, filtered_data_2012, filtered_data_2013, 
                          filtered_data_2014, filtered_data_2015, filtered_data_2016, 
                          filtered_data_2017, filtered_data_2018, filtered_data_2019, 
                          filtered_data_2020, filtered_data_2021, filtered_data_2022)




# Creating target variable:
# List of teams that actually made the playoffs each season:
playoff_teams_2002 <- c("Jets", "Colts", "Steelers", "Browns", "Raiders", "Titans", "Falcons", "Packers", "49ers", "Giants", "Eagles", "Buccaneers")
playoff_teams_2003 <- c("Ravens", "Titans", "Colts", "Broncos", "Patriots", "Chiefs", "Eagles", "Packers", "Seahawks", "Panthers", "Cowboys", "Rams")
playoff_teams_2004 <- c("Chargers", "Jets", "Colts", "Broncos", "Steelers", "Patriots", "Packers", "Vikings", "Seahawks", "Rams", "Falcons", "Eagles")
playoff_teams_2005 <- c("Patriots", "Jaguars", "Bengals", "Steelers", "Colts", "Broncos", "Seahawks", "Buccaneers", "Commanders", "Bears", "Giants", "Panthers")
playoff_teams_2006 <- c("Colts", "Chiefs", "Patriots", "Jets", "Ravens", "Chargers", "Bears", "Seahawks", "Cowboys", "Saints", "Eagles", "Giants")
playoff_teams_2007 <- c("Patriots", "Steelers", "Jaguars", "Colts", "Chargers", "Titans", "Packers", "Seahawks", "Commanders", "Cowboys", "Buccaneers", "Giants")
playoff_teams_2008 <- c("Chargers", "Colts", "Dolphins", "Ravens", "Steelers", "Titans", "Panthers", "Cardinals", "Falcons", "Giants", "Vikings", "Eagles")
playoff_teams_2009 <- c("Patriots", "Ravens", "Colts", "Chargers", "Bengals", "Jets", "Saints", "Cardinals", "Packers", "Vikings", "Cowboys", "Eagles")
playoff_teams_2010 <- c("Steelers", "Chiefs", "Ravens", "Patriots", "Colts", "Jets", "Bears", "Seahawks", "Saints", "Falcons", "Eagles", "Packers")
playoff_teams_2011 <- c("Broncos", "Patriots", "Steelers", "Ravens", "Texans", "Bengals", "49ers", "Saints", "Lions", "Packers", "Giants", "Falcons")
playoff_teams_2012 <- c("Texans", "Bengals", "Patriots", "Broncos", "Ravens", "Colts", "Falcons", "Commanders", "Seahawks", "49ers", "Packers", "Vikings")
playoff_teams_2013 <- c("Bengals", "Chargers", "Colts", "Chiefs", "Broncos", "Patriots", "Seahawks", "Eagles", "Saints", "Panthers", "Packers", "49ers")
playoff_teams_2014 <- c("Steelers", "Ravens", "Colts", "Bengals", "Patriots", "Broncos", "Seahawks", "Panthers", "Cardinals", "Packers", "Cowboys", "Lions")
playoff_teams_2015 <- c("Broncos", "Bengals", "Steelers", "Patriots", "Texans", "Chiefs", "Panthers", "Vikings", "Seahawks", "Cardinals", "Commanders", "Packers")
playoff_teams_2016 <- c("Patriots", "Texans", "Raiders", "Chiefs", "Steelers", "Dolphins", "Falcons", "Seahawks", "Lions", "Cowboys", "Packers", "Giants")
playoff_teams_2017 <- c("Chiefs", "Patriots", "Titans", "Steelers", "Jaguars", "Bills", "Eagles", "Rams", "Falcons", "Vikings", "Saints", "Panthers")
playoff_teams_2018 <- c("Bears", "Eagles", "Seahawks", "Cowboys", "Rams", "Saints", "Colts", "Texans", "Cheifs", "Chargers", "Ravens", "Patriots")
playoff_teams_2019 <- c("Texans", "Bills", "Titans", "Patriots", "Seahawks", "Eagles", "Vikings", "Saints", "Ravens", "49ers", "Chiefs", "Packers")
playoff_teams_2020 <- c("Browns", "Steelers", "Ravens", "Titans", "Colts", "Bills", "Cheifs", "Rams", "Seahawks", "Buccaneers", "Commanders", "Bears", "Saints", "Packers") #Number of teams in playoffs increased to 14 in 2020
playoff_teams_2021 <- c("Raiders", "Bengals", "Patriots", "Bills", "Steelers", "Chiefs", "Titans", "Packers", "Cardinals", "Rams", "49ers", "Cowboys", "Eagles", "Buccaneers")
playoff_teams_2022 <- c("Cheifs", "Ravens", "Jaguars", "Dolphins", "Steelers", "Browns", "Texans", "Eagles", "Lions", "49ers", "Saints", "Seahawks", "Cowboys", "Vikings")

# New columns for home and away playoff appearance
all_seasons_data$home_playoff_appearance <- 0
all_seasons_data$away_playoff_appearance <- 0

# Updating playoff appearance for each year for both home and away teams
for (i in 1:nrow(all_seasons_data)) {
  season <- format(all_seasons_data$date[i], "%Y")
  home_team <- all_seasons_data$home[i]
  away_team <- all_seasons_data$away[i]
  
  if (home_team %in% get(paste0("playoff_teams_", season))) {
    all_seasons_data$home_playoff_appearance[i] <- 1
  }
  
  if (away_team %in% get(paste0("playoff_teams_", season))) {
    all_seasons_data$away_playoff_appearance[i] <- 1
  }
}

library(caTools)
all_seasons_data$any_playoff_appearance <- as.integer(all_seasons_data$home_playoff_appearance | all_seasons_data$away_playoff_appearance)
all_seasons_data <- all_seasons_data[, !(names(all_seasons_data) %in% c("home_playoff_appearance", "away_playoff_appearance"))]




# Cleaning converting and adding new attributes to the data:
library(readr)
library(dplyr)
library(stringr)

all_seasons_data <- all_seasons_data %>%
  mutate(score_diff = score_home - score_away,
         winner = as.integer((score_home - score_away) > 0))

split_convert <- function(column) {
  splits <- str_split_fixed(column, "-", 2)
  list(as.numeric(splits[, 1]), as.numeric(splits[, 2]))
}

third_downs_away <- split_convert(all_seasons_data$third_downs_away)
all_seasons_data$third_downs_away <- third_downs_away[[1]]
all_seasons_data$third_downs_rate_away <- ifelse(third_downs_away[[2]] == 0, 0, third_downs_away[[1]] / third_downs_away[[2]])
all_seasons_data$third_downs_attempts_away <- third_downs_away[[2]]

third_downs_home <- split_convert(all_seasons_data$third_downs_home)
all_seasons_data$third_downs_home <- third_downs_home[[1]]
all_seasons_data$third_downs_rate_home <- ifelse(third_downs_home[[2]] == 0, 0, third_downs_home[[1]] / third_downs_home[[2]])
all_seasons_data$third_downs_attempts_home <- third_downs_home[[2]]

fourth_downs_away <- split_convert(all_seasons_data$fourth_downs_away)
all_seasons_data$fourth_downs_away <- fourth_downs_away[[1]]
all_seasons_data$fourth_downs_rate_away <- ifelse(fourth_downs_away[[2]] == 0, 0, fourth_downs_away[[1]] / fourth_downs_away[[2]])
all_seasons_data$fourth_downs_attempts_away <- fourth_downs_away[[2]]

fourth_downs_home <- split_convert(all_seasons_data$fourth_downs_home)
all_seasons_data$fourth_downs_home <- fourth_downs_home[[1]]
all_seasons_data$fourth_downs_rate_home <- ifelse(fourth_downs_home[[2]] == 0, 0, fourth_downs_home[[1]] / fourth_downs_home[[2]])
all_seasons_data$fourth_downs_attempts_home <- fourth_downs_home[[2]]

comp_att_away <- split_convert(all_seasons_data$comp_att_away)
all_seasons_data$complete_passes_away <- comp_att_away[[1]]
all_seasons_data$pass_completion_rate_away <- ifelse(comp_att_away[[2]] == 0, 0, comp_att_away[[1]] / comp_att_away[[2]])
all_seasons_data$pass_attempt_away <- comp_att_away[[2]]
all_seasons_data <- all_seasons_data %>% select(-comp_att_away)

comp_att_home <- split_convert(all_seasons_data$comp_att_home)
all_seasons_data$complete_passes_home <- comp_att_home[[1]]
all_seasons_data$pass_completion_rate_home <- ifelse(comp_att_home[[2]] == 0, 0, comp_att_home[[1]] / comp_att_home[[2]])
all_seasons_data$pass_attempt_home <- comp_att_home[[2]]
all_seasons_data <- all_seasons_data %>% select(-comp_att_home)

sacks_away <- split_convert(all_seasons_data$sacks_away)
all_seasons_data$sacks_away <- sacks_away[[1]]
all_seasons_data$pressures_away <- sacks_away[[2]]

sacks_home <- split_convert(all_seasons_data$sacks_home)
all_seasons_data$sacks_home <- sacks_home[[1]]
all_seasons_data$pressures_home <- sacks_home[[2]]

penalties_away <- split_convert(all_seasons_data$penalties_away)
all_seasons_data$penalties_away <- penalties_away[[1]]
all_seasons_data$penalties_yards_away <- penalties_away[[2]]

penalties_home <- split_convert(all_seasons_data$penalties_home)
all_seasons_data$penalties_home <- penalties_home[[1]]
all_seasons_data$penalties_yards_home <- penalties_home[[2]]

redzone_away <- split_convert(all_seasons_data$redzone_away)
all_seasons_data$redzone_sucess_away <- redzone_away[[1]]
all_seasons_data$redzone_rate_away <- ifelse(redzone_away[[2]] == 0, 0, redzone_away[[1]] / redzone_away[[2]])
all_seasons_data$redzone_attempts_away <- redzone_away[[2]]
all_seasons_data <- all_seasons_data %>% select(-redzone_away)

redzone_home <- split_convert(all_seasons_data$redzone_home)
all_seasons_data$redzone_sucess_home <- redzone_home[[1]]
all_seasons_data$redzone_rate_home <- ifelse(redzone_home[[2]] == 0, 0, redzone_home[[1]] / redzone_home[[2]])
all_seasons_data$redzone_attempts_home <- redzone_home[[2]]
all_seasons_data <- all_seasons_data %>% select(-redzone_home)

possession_away <- str_split_fixed(all_seasons_data$possession_away, ":", 2)
all_seasons_data$possession_away <- as.numeric(possession_away[, 1]) * 60 + as.numeric(possession_away[, 2])

possession_home <- str_split_fixed(all_seasons_data$possession_home, ":", 2)
all_seasons_data$possession_home <- as.numeric(possession_home[, 1]) * 60 + as.numeric(possession_home[, 2])

all_seasons_data$date <- as.Date(all_seasons_data$date)
start_date <- as.Date(all_seasons_data$date[1])
all_seasons_data$season <- 2002 + as.numeric(difftime(all_seasons_data$date, start_date, units = "days")) %/% 365

nRows <- nrow(all_seasons_data)
nCols <- ncol(all_seasons_data)
column_names <- colnames(all_seasons_data)

head(all_seasons_data)




#Excluding target variable from the dataset
all_seasons_data$any_playoff_appearance <- as.factor(all_seasons_data$any_playoff_appearance)
excluded_columns <- c("any_playoff_appearance")
features <- all_seasons_data[, !(names(all_seasons_data) %in% excluded_columns)]
target <- all_seasons_data$any_playoff_appearance




# Splitting data into testing and training data
library(randomForest)
library(caret)
split <- createDataPartition(all_seasons_data$any_playoff_appearance, p = 0.8, list = FALSE)
training_set <- all_seasons_data[split, ]
testing_set <- all_seasons_data[-split, ]




# Training the Random Forest model:
rf_model_all <- randomForest(any_playoff_appearance ~ ., data = training_set, ntree = 500)




# Evaluating the model with the testing set:
predictions_all <- predict(rf_model_all, newdata = testing_set)
confusionMatrix(predictions_all, testing_set$any_playoff_appearance)
