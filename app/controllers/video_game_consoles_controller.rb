class VideoGameConsolesController < ApplicationController
  # GET /video_game_consoles
  # GET /video_game_consoles.json
  def index
    @video_game_consoles = VideoGameConsole.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @video_game_consoles }
    end
  end

  # GET /video_game_consoles/1
  # GET /video_game_consoles/1.json
  def show
    @video_game_console = VideoGameConsole.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @video_game_console }
    end
  end

  # GET /video_game_consoles/new
  # GET /video_game_consoles/new.json
  def new
    @video_game_console = VideoGameConsole.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @video_game_console }
    end
  end

  # GET /video_game_consoles/1/edit
  def edit
    @video_game_console = VideoGameConsole.find(params[:id])
  end

  # POST /video_game_consoles
  # POST /video_game_consoles.json
  def create
    @video_game_console = VideoGameConsole.new(params[:video_game_console])

    respond_to do |format|
      if @video_game_console.save
        format.html { redirect_to @video_game_console, notice: 'Video game console was successfully created.' }
        format.json { render json: @video_game_console, status: :created, location: @video_game_console }
      else
        format.html { render action: "new" }
        format.json { render json: @video_game_console.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /video_game_consoles/1
  # PUT /video_game_consoles/1.json
  def update
    @video_game_console = VideoGameConsole.find(params[:id])

    respond_to do |format|
      if @video_game_console.update_attributes(params[:video_game_console])
        format.html { redirect_to @video_game_console, notice: 'Video game console was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @video_game_console.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_game_consoles/1
  # DELETE /video_game_consoles/1.json
  def destroy
    @video_game_console = VideoGameConsole.find(params[:id])
    @video_game_console.destroy

    respond_to do |format|
      format.html { redirect_to video_game_consoles_url }
      format.json { head :no_content }
    end
  end
end
