class UnconfirmedMatchesController < ApplicationController
  def index
    render json: UnconfirmedMatch.all
  end
end
