class RejectedMatchesController < ApplicationController

  def index
    render json: RejectedMatch.all
  end
end
