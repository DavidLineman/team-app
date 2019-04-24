class PlayersController < ApplicationController

  def index
    @player = Player.all
  end

  def new
    @player = Player.new
  end

  def show
    @player = Player.find_by_id(params[:id])
    return render_not_found if @player.blank?
  end

  def create
    @player = Player.create(player_params)
    if @player.invalid?
      flash[:error] = 'Could not add your player. The Data Entered is Invalid.'
    end
    redirect_to root_path
  end

  def update
    current_player.update_attributes(player_params)
    render plain: 'updated!'
  end


  private

  def current_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:first_name, :last_name, :position, :row_order_position)
  end


end
