class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @user = User.find(params[:id])
    @event = Event.new

    if @user == current_user
      @my_events = current_user.events
    end
  end

end