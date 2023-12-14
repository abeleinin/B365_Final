# Clean data

# Import the data set

NFLData = read.csv("nfl_team_stats_2002-2022.csv")

# Date variable becomes either regular or post season
date = NFLData[,1]
date = as.numeric(substring(date,6,7))

for (i in 1:length(date)){
if (date[i] == 9 ||date[i] == 10 || date[i] == 11 || date[i] == 12)
  date[i] = "regular"
if (date[i] == 1 || date[i] == 2)
  date[i] = "post"
}
NFLData[,1] = date

# Eliminate fourth down completion
NFLData = NFLData[, -c(8,9)]

# Change third downs from hyphen success rates to proportions
# i.e. 1-2 ~ .5

for (k in 6:7) {
  delim = 0
  # Iterate over all of the rows
  for (i in 1:nrow(NFLData)) {
    # Use - as a delimiter
    delim = -1

    # Iterates over each character in the string to find -
    for(j in 1:nchar(NFLData[i,k])){
      if(substring(NFLData[i,k],j,j) == "-") {delim = j}
    }

    # Final computation
    NFLData[i,k] = round(as.numeric(substring(NFLData[i,k], 1,delim-1)) /  as.numeric(substring(NFLData[i,k], delim+1)), 4)
  }
}

# Change completion attempts from hyphen success rates to proportions
# i.e. 1-2 ~ .5

for (j in 14:15) {
  delim = 0
  # Iterate over all of the rows in the data
  for (i in 1:nrow(NFLData)) {
    # Use - as a delimeter
    delim = -1

    # Iterates over each character in the string to find  -
    for(k in 1:nchar(NFLData[i,j])){
      if(substring(NFLData[i,j],k,k) == "-") {delim = k}
    }
    # Final computation
    NFLData[i,j] = round(as.numeric(substring(NFLData[i,j], 1,delim-1)) /  as.numeric(substring(NFLData[i,j], delim+1)), 4)
  }
}

#Split sack into two columns
# i.e 3-17 (3 sacks 17 loss yards)

# Initate the new columns
num_sacks_away = as.numeric(substring(NFLData[,16],1,1))
num_sacks_home = as.numeric(substring(NFLData[,17],1,1))
lostyrd_sacks_away = as.numeric(substring(NFLData[,16],3))
lostyrd_sacks_home = as.numeric(substring(NFLData[,17],3))

# Bind the columns together at the end of the data frame
NFLData = cbind(NFLData, num_sacks_away, num_sacks_home, lostyrd_sacks_away, lostyrd_sacks_home)

# Delete the existing sack columns
NFLData = NFLData[, -c(16,17)]

# Initiate new column
num_penalties_away = rep(0, nrow(NFLData))
num_penalties_home = rep(0, nrow(NFLData))
num_penalties_df = cbind(num_penalties_away,num_penalties_home)
lostyrd_penalties_away = rep(0, nrow(NFLData))
lostyrd_penalties_home = rep(0, nrow(NFLData))
lostyrd_penalties_df = cbind(lostyrd_penalties_away, lostyrd_penalties_home)


# Split penalty into two columns
# i.e 5-29 (5 penalties and 29 yards lost)

# Iterate over 14 and 15 columns
for (j in 24:25) {

  # Iterate over all rows
  for (i in 1:nrow(NFLData)) {
    # Use - as a delimiter
    delim = -1

    # Iterate over each character in the string to find location of -
    for(k in 1:nchar(NFLData[i,j])){
      if(substring(NFLData[i,j],k,k) == "-") {delim = k}
    }
    # assings the divided information to two vectors
    num_penalties_df[i,j-23] = as.numeric(substring(NFLData[i,j],1,delim-1))
    lostyrd_penalties_df[i,j-23] = as.numeric(substring(NFLData[i,j],delim + 1))
  }
}

# Bind number of penalties and lost yards from penalties to end of the data set
NFLData = cbind(NFLData, num_penalties_df, lostyrd_penalties_df)

#delete the previous penalty columns (24,25)
NFLData = NFLData[, -c(24,25)]

# Change red zone data from 0-8 to 8

NFLData$redzone_away = substring(NFLData$redzone_away, 3,3)
NFLData$redzone_home = substring(NFLData$redzone_home, 3,3)

# Change possession time from 23:30 to 23.5
temp_possesion_away = round(as.numeric(substring(NFLData$possession_away,1,2)) + (as.numeric(substring(NFLData$possession_away,4,5)) / 60),4)
NFLData$possession_away = temp_possesion_away
temp_possesion_home = round(as.numeric(substring(NFLData$possession_home,1,2)) + (as.numeric(substring(NFLData$possession_home,4,5)) / 60),4)
NFLData$possession_home = temp_possesion_home



# Iterate over all rows and numeric columns in the NFLData dataframe
tempmatrix = matrix(rep(0, 107179),nrow(NFLData), (ncol(NFLData) -3)/2)
for(i in 1: nrow(NFLData)){
  for(j in 1:((ncol(NFLData)-3)/2)){
    #Subtract the away from the home score for all numeric values
    tempmatrix[i,j] = as.numeric(NFLData[i, (j * 2) + 2]) - as.numeric(NFLData[i, (j * 2) + 3])
  }
}


# Final usable data frame
# Each value represents the difference of the away team to the home team
diffdf = cbind(NFLData[,1:3], tempmatrix)
colnames(diffdf) = c("date", "away", "home", "first_downs", "third_downs",
                     "passing_yards", "rushing_yards", "total_yards", "comp_att",
                     "rushing_attempts", "fumbles", "int", "turnovers", "redzone",
                     "drives", "def_st_td", "possesion", "score", "num_sacks",
                     "lostyrd_sacks", "num_penalties", "lostyrd_penalties")

# winloss contains the result of the away team (win, loss, tie)
winloss = rep(0,nrow(diffdf))
for(i in 1:nrow(diffdf)){
  if (diffdf$score[i] == 0)
    winloss[i] = "tie"
  else if (diffdf$score[i] > 0)
    winloss[i] = "win"
  else if (diffdf$score[i] < 0)
    winloss[i] = "loss"
}


# Bind winloss column to the diffdf data frame
diffdf = cbind(diffdf, winloss)
