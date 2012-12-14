class OwnershipsController < ApplicationController
  before_filter :authenticate_user!
  
  before_filter do
    @game_retailers = GameRetailer.all
    @game_platforms = GamePlatform.all
  end
  
  def ownerships
    current_user.ownerships
  end
  
  # GET /ownerships
  # GET /ownerships.json
  def index
    @ownerships = ownerships

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ownerships }
    end
  end

  # GET /ownerships/1/edit
  def edit
    @ownership = ownerships.find(params[:id])
  end

  # POST /ownerships
  # POST /ownerships.json
  def create
    @ownership = ownerships.new(params[:ownership])
    puts @ownership.inspect

    respond_to do |format|
      if @ownership.save
        format.html { redirect_to my_games_path, notice: 'Your game was successfully added.' }
        format.json { render json: @ownership, status: :created, location: @ownership }
      else
        format.html { render action: "new" }
        format.json { render json: @ownership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ownerships/1
  # PUT /ownerships/1.json
  def update
    @ownership = ownerships.find(params[:id])

    respond_to do |format|
      if @ownership.update_attributes(params[:ownership])
        format.html { redirect_to my_games_path, notice: 'Your game was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ownership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ownerships/1
  # DELETE /ownerships/1.json
  def destroy
    @ownership = ownerships.find(params[:id])
    @ownership.destroy

    respond_to do |format|
      format.html { redirect_to ownerships_url }
      format.json { head :no_content }
    end
  end
end
