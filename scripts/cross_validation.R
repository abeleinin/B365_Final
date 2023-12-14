# Implements k fold cross validation
# Implementation help found at https://www.youtube.com/watch?v=-SQEbwfRVPA
# ---------------------------- run the cleanfordecisiontree script before running this one -------------------------------------
# ---------------------------- clear existing global variables ---------------------------------------

# Import libraries

# Import the rpart library if needed
if(!require('rpart')) {
  install.packages('rpart')
  library('rpart')
}
# Import the plyr library if needed
if(!require('plyr')) {
  install.packages('plyr')
  library('plyr')
}
# Import the plyr library if needed
if(!require('GGally')) {
  install.packages('GGally')
  library('GGally')
}

# Import the plyr library if needed
if(!require('tidyverse')) {
  install.packages('tidyverse')
  library('tidyverse')
}

# Splits the data into train and test data frames
train = diffdf[c(diffdf$date == "regular"),]
test = diffdf[c(diffdf$date == "post"),]


# Set number of folds
k = 5

# Creates folds
train = train %>%
  sample_frac(size=1) %>%
  mutate(fold = rep(1:k, length = n())) %>%
  arrange(fold)

# Initializes different CP values and vector to hold inaccuracy
cp_values_grid = seq(from = 0.002, to = 0.003, len = 101)
error_estimates = rep(0, times = length(cp_values_grid))

error_estimate_per_fold = rep (0,k)

# Iterates through all cp values
for (l in 1:length(cp_values_grid)){

  current_cp_value = cp_values_grid[l]

  # Iterates such that all folds are the test set
  for(i in 1:k){
    train_cv = train %>%
      filter(fold != i)
    test_cv = train %>%
      filter(fold == i)


    # Fit model
    treefit = rpart(winloss ~ first_downs + third_downs +
                    passing_yards + rushing_yards +
                    total_yards + comp_att + rushing_attempts +
                    fumbles + int + turnovers + redzone + drives +
                    def_st_td + possesion + num_sacks +lostyrd_sacks +
                    num_penalties + lostyrd_penalties,
                    data = train_cv,
                    control = rpart.control(cp = current_cp_value))

    # Get prediction
    pred = predict(treefit, test_cv)

    # Compute accuracy and inaccuracy

    # Make decision from each row of probabilites
    decision = rep(0, nrow(test))
    tempdecision = 0
    for (a in 1:nrow(pred)){
      tempdecision = 0
      for (j in 1:ncol(pred)){
        if(pred[a,j] > tempdecision){
          tempdecision = pred[a,j]
          indexdecision = j
        }
      }
      if(indexdecision == 1)
      {
        decision[a] = "loss"
      } else if (indexdecision == 2) {

        decision[a] = "tie"
      } else if (indexdecision == 3)
      {
        decision[a] = "win"
      }
    }

    # Compute the total correct decisions and the decimal (in)accuracy

    correct = sum(test_cv$winloss == decision)
    accuracy = correct/length(decision)
    inaccuracy = 1 - accuracy

    error_estimate_per_fold[i] = inaccuracy
  }

  error_estimates[l] =  mean(error_estimate_per_fold)
}

# Displays the CP values and corresponding inaccuracies

df = tibble(cp_value = cp_values_grid, error_estimate = error_estimates)
ggplot(df, aes(x=cp_value, y = error_estimate))  +
  geom_point() +
  labs(x = "Complexity parameter", y = "Estimate of Inaccuracy")
