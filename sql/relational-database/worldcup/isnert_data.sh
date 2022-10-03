#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

declare -A teams
team_id() {
  local cache_id=${teams[$1]}
  if [ -z "$cache_id" ]
  then
    local db_id=$(echo -e $($PSQL "select team_id from teams where name='$1'"))
    if [ -z "$db_id" ]
    then
      local ins_id=$(echo -e $($PSQL "insert into teams (name) values ('$1') returning team_id;") | cut -d ' ' -f 1)
      teams[$1]=$ins_id
      # Return Id from insert
      echo $ins_id
      return
    fi
    teams[$1]=$db_id
    # Return Id from Select
    echo $db_id
    return
  fi
  # Return id from memory cache
  echo $cache_id
  return
}

while IFS="," read -r year round winner opponent winner_goals opponent_goals
do
  winner_id=$(team_id "$winner")
  opponent_id=$(team_id "$opponent")
  echo $($PSQL "insert into games (year,round,winner_id,opponent_id,winner_goals,opponent_goals) values ($year,'$round',$winner_id,$opponent_id,$winner_goals,$opponent_goals);")
done < <(tail -n +2 games.csv)
