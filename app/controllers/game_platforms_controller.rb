class GamePlatformsController < ApplicationController
  before_filter :authenticate_user!
  
  before_filter do
    @games = Game.all
    @platforms = Platform.all
  end
  
  # GET /games
  # GET /games.json
  def index
    @game_platforms = GamePlatform.joins(:game).order("title ASC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @game_platforms }
    end
  end

  # GET /games/1
  # GET /games/1.json
  def show
    @game_platform = GamePlatform.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @game_platform }
    end
  end

  # GET /games/new
  # GET /games/new.json
  def new
    @game_platform = GamePlatform.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @game_platform }
    end
  end

  # GET /games/1/edit
  def edit
    @game_platform = GamePlatform.find(params[:id])
  end

  # POST /games
  # POST /games.json
  def create
    @game_platform = GamePlatform.new(params[:game_platform])

    respond_to do |format|
      if @game_platform.save
        format.html { redirect_to @game_platform, notice: 'GamePlatform was successfully created.' }
        format.json { render json: @game_platform, status: :created, location: @game_platform }
      else
        format.html { render action: "new" }
        format.json { render json: @game_platform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /games/1
  # PUT /games/1.json
  def update
    @game_platform = GamePlatform.find(params[:id])

    respond_to do |format|
      if @game_platform.update_attributes(params[:game_platform])
        format.html { redirect_to @game_platform, notice: 'GamePlatform was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @game_platform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /games/1
  # DELETE /games/1.json
  def destroy
    @game_platform = GamePlatform.find(params[:id])
    @game_platform.destroy

    respond_to do |format|
      format.html { redirect_to games_url }
      format.json { head :no_content }
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
