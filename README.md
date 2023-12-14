# B365 Final Project

## Table of contents
- [Decision Tree](#decision-tree)
- [Random Forest](#random-forest)
- [Elo and Monte Carlo Simulation](#elo-and-monte-carlo-simulation)
- [Dataset](#dataset)

## Decision Tree

### Scripts

- [decision_tree.R](/scripts/decision_tree.R)
- [cross_validation.R](/scripts/cross_validation.R) 
- [clean_for_decision_tree.R](/scripts/clean_for_decision_tree.R)

### Data

- [nfl-games2002-2022.csv](/data/nfl-games2002-2022.csv)

## Random Forest

### Scripts 

- [random_forest.R](/scripts/random_forest.R) 

### Data

- [nfl-games2002-2022.csv](/data/nfl-games2002-2022.csv)

## Elo and Monte Carlo Simulation

### Scripts 

- [elo_and_simulation.ipynb](/scripts/elo_and_simulation.ipynb)
  - Implements the Elo rating system for NFL team ranking
  - Simulations for the following:
    - Win/Loss predictions for the rest of the 2023 regular season
    - Playoff probability predictions based on the [NFL playoff bracket](https://en.wikipedia.org/wiki/NFL_playoffs#Current_playoff_system)
    - Postseason probability predictions based on predicted regular season Win/Loss and simulated playoff
- [get_espn_data.py](/scripts/get_espn_data.py)
  - Using the `requests` library the script scraps the [ESPN NFL API](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2023/types/2/weeks) for data relevant data from current 2023 season

### Data used

- [nfl_scores.csv](/data/nfl_scores.csv)
- [nfl_scraped_2023.csv](/data/nfl_scraped_2023.csv)

## Dataset

- [nfl_scores.csv](/data/nfl_scores.csv) 
  - Kaggle: [NFL scores and betting data](https://www.kaggle.com/datasets/tobycrabtree/nfl-scores-and-betting-data?select=spreadspoke_scores.csv)
- [nfl-games2002-2022.csv](/data/nfl-games2002-2022.csv) 
  - Kaggle: [NFL Games Statistics 2002 - 2022](https://www.kaggle.com/datasets/cviaxmiwnptr/nfl-team-stats-20022019-espn)
- [nfl-team2010-2022.csv](/data/nfl-team2010-2022.csv) 
  - Kaggle: [NFL Team Statistics 2010 - 2021](https://www.kaggle.com/datasets/shanyachaubey/nfl20102021offdefplayoffteamstats)
