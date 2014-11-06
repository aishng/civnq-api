class Team
  def self.lookup_player_ids(teams)
    teams.map { |team|
      team.map { |player|
        User.find_by(username: player).steamid
      }
    }
  end
end
