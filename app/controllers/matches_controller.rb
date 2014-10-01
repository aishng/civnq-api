class MatchesController < ApplicationController
  def index
    render json: 5
  end

  def create
    match_type  = Match::MatchType.const_get(params["match"]["type"])
    game        = Match::GameType.const_get(params["match"]["game"])

    match = Match.new(teams: params["match"]["teams"], type: match_type, game: game)

    match.save

    render json: match
  end
end

