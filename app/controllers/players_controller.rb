class PlayersController < ApplicationController

  def index
    @player = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.create(player_params)
    if @player.invalid?
      flash[:error] = 'Could not add your player. The Data Entered is Invalid.'
    end
    redirect_to root_path
  end

  private

  def player_params
    params.require(:player).permit(:first_name, :last_name, :position)
  end


end
