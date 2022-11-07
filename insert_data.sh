#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE teams,games")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $WINNER != "winner" ]]
  then
    # get major_id
    TEAM=$WINNER
    TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$TEAM'")
    # if not found
    if [[ -z $TEAM_ID ]]
    then
      # insert major
      echo need to add $TEAM
            # insert major
      INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$TEAM')")
      if [[ $INSERT_TEAM_RESULT == "INSERT 0 1" ]]
      then
        TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$TEAM'")      
        echo Inserted into teams, $TEAM as id $TEAM_ID
      fi
    fi
    WINNER_ID=$TEAM_ID
    
    TEAM=$OPPONENT
    TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$TEAM'")
    # if not found
    if [[ -z $TEAM_ID ]]
    then
      # insert major
      echo need to add $TEAM
            # insert major
      INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$TEAM')")
      if [[ $INSERT_TEAM_RESULT == "INSERT 0 1" ]]
      then
        TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$TEAM'")      
        echo Inserted into teams, $TEAM as id $TEAM_ID
      fi
    fi
    OPPONENT_ID=$TEAM_ID


    INSERT_GAMES_RESULT=$($PSQL "INSERT INTO games(year,round,winner_id,winner_goals,opponent_id,opponent_goals) 
                                 VALUES($YEAR,'$ROUND',$WINNER_ID,$WINNER_GOALS,$OPPONENT_ID,$OPPONENT_GOALS)" )
    echo $INSERT_GAMES_RESULT
  fi
done
