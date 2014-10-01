class MatchesController < ApplicationController
  def index
    render json: 5
  end

  def create
    match_type = 0
    if params["match"]["type"] == "FFA"
      match_type = 1
    end
    match = Match.new(teams: params["match"]["teams"], type: match_type, game: params["match"]["game"])
    match.save
    render json: match
  end
end

