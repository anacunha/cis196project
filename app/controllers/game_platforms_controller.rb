class GamePlatformsController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /games
  # GET /games.json
  def index
    @game_platforms = GamePlatform.joins(:game).order("title ASC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @game_platforms }
    end
  end
  
  def pc
    @game_platforms = GamePlatform.pc

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @games }
    end
  end
  
  def playstation3
    @game_platforms = GamePlatform.playstation3

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @games }
    end
  end
  
  def xbox360
    @game_platforms = GamePlatform.xbox360

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @games }
    end
  end
  
  def wii
    @game_platforms = GamePlatform.wii

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @games }
    end
  end
  
  def others
    @game_platforms = GamePlatform.others

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @games }
    end
  end
  
end
