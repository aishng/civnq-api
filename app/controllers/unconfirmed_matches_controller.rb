class UnconfirmedMatchesController < ApplicationController
  before_action :require_login

  def create
    params.require(:unconfirmed_match).permit(:game, :match_type, :teams, :comment)
    params[:unconfirmed_match][:teams] = Team.lookup_player_ids(params[:unconfirmed_match][:teams])

    if UnconfirmedMatch.validate(params[:unconfirmed_match])
      unconfirmed_match = UnconfirmedMatch.create(game: params[:unconfirmed_match][:game],
                                                  match_type: params[:unconfirmed_match][:match_type],
                                                  teams: params[:unconfirmed_match][:teams],
                                                  comment: params[:unconfirmed_match][:comment],
                                                  reporter_id: params[:unconfirmed_match][:reporter_id])
      render json: unconfirmed_match
    else
      render json: {}, status: 400
    end
  end


  def index
    render json: UnconfirmedMatch.all
  end
end
