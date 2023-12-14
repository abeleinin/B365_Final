import pandas as pd
import requests

class NFLScraper:
  def __init__(self):
    pass

  def get_data(self, url):
    """
    Given a url, return the json data
    """
    response = requests.get(url)
    if response.status_code == 200:
        return response.json()
    else:
      raise RuntimeError('API call failed')
    
  def create_data(self, url):
    """
    Given week 1 url, create a dataframe with all 
    the match up information for the given season
    """
    res = pd.DataFrame(columns={'home_team', 
                                'away_team',
                                'week',
                                'score_home',
                                'score_away',
                                'result_home',
                                'result_away'})
    
    bye_week_data = pd.DataFrame(columns={'Team', 'Week'})
                    
    data = self.get_data(url)

    for i, event in enumerate(data['items']):
      print("Week " + str(i+1))

      week_number_url = event['$ref']
      week_events = self.get_data(week_number_url)
      if 'teamsOnBye' in week_events.keys():
        teams = week_events['teamsOnBye']
        for team_url in teams:
          team_data = self.get_data(team_url['$ref'])
          new_row ={'Team': team_data['displayName'], 
                    'Week': i+1}
          bye_week_data = bye_week_data.append(new_row, ignore_index=True)
      matchups_url = week_events['events']
      data = self.get_data(matchups_url['$ref'])
      
      for item in data['items']:
        game = self.get_data(item['$ref'])
        teams = game['name'].split(' at ')
        away_team, home_team = teams
        print(home_team + " vs. " + away_team)

        comp = game['competitions']
        team = comp[0]['competitors']
        
        for object in team:
          url = object['score']
          data = self.get_data(url['$ref'])
          labs = data.keys()
          if object['homeAway'] == 'home':
            if 'winner' in labs:
              home_team_score = data['displayValue']
              home_result = data['winner']
            else:
              home_team_score = None
              home_result = None
          else:
            if 'winner' in labs:
              away_team_score = data['displayValue']
              away_result = data['winner']
            else:
              away_team_score = None
              away_result = None
        
        new_row = {'home_team': home_team, 
               'away_team': away_team, 
               'week': i+1,
               'score_home': home_team_score, 
               'score_away': away_team_score, 
               'result_home': home_result, 
               'result_away': away_result}

        res = res.append(new_row, ignore_index=True)
      
    res.to_csv('../data/nfl_scraped_2023.csv', sep=',')
    bye_week_data.to_csv('../data/nfl_byeweek_2023.csv', sep=',')

if __name__ == '__main__':
  # All the weeks in the 2023 NFL season
  url = 'https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2023/types/2/weeks'

  nfl = NFLScraper()

  nfl.create_data(url)
