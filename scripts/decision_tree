# Implement decision tree with one hold-out
# ---------------------------- run the cleanfordecisiontree script before running this one -------------------------------------
# ---------------------------- clear existing global variables ---------------------------------------
# Import the rpart library if needed
if(!require('rpart')) {
  install.packages('rpart')
  library('rpart')
}

#Seperate the data frame into train and test (80% to 20%)
n = nrow(diffdf)
z = sample(n, 4*n/5)

traindf = diffdf[z,]
testdf = diffdf[-z,]

# Create model with default cp value
treefit = rpart(winloss ~ first_downs + third_downs +
                  passing_yards + rushing_yards +
                  total_yards + comp_att + rushing_attempts +
                  fumbles + int + turnovers + redzone +
                  drives + def_st_td + possesion + num_sacks +
                  lostyrd_sacks + num_penalties + lostyrd_penalties,
                  data = traindf,
                  control = rpart.control(cp = .01))

# Get prediction
pred = predict(treefit, testdf)


#iterates over rows and columns of the pred (of the form .4 .1 .5 : l-t-w)
#end result vector with a decision made of win and loss
decision = rep(0, nrow(testdf))
tempdecision = 0

for (i in 1:nrow(pred)){
  tempdecision = 0
  for (j in 1:ncol(pred)){
    if(pred[i,j] > tempdecision){
      tempdecision = pred[i,j]
      indexdecision = j
    }
  }
  if(indexdecision == 1)
  {
    decision[i] = "loss"
  } else if (indexdecision == 2) {

    decision[i] = "tie"
  } else if (indexdecision == 3)
  {
    decision[i] = "win"
  }
}

correct = 0
#computes the accuracy of the decision tree
for(i in 1:length(decision)){
  if(decision[i] == testdf$winloss[i])
  {
    correct = correct + 1
  }
}

# Final Accuracy for this trial
accuracy2 = correct / length(decision)

# Resulting confusion matrix
conf.mat = table(testdf$winloss, decision)

