class UnconfirmedMatchesController < ApplicationController
  def create
    params.require(:unconfirmed_match).permit(:game, :match_type, :teams, :comment)
    puts params
    render json: {}
  end


  def index
    render json: UnconfirmedMatch.all
  end
end
