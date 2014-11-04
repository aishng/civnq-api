class SessionsController < ApplicationController
  def index
    render json: current_user if logged_in?
    render json: {}           unless logged_in?
  end

  def destroy
    reset_session if logged_in?
    render json: {}
  end
end
