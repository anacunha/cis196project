class GameRetailersController < ApplicationController
  # GET /game_retailers
  # GET /game_retailers.json
  def index
    @game_retailers = GameRetailer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @game_retailers }
    end
  end

  # GET /game_retailers/1
  # GET /game_retailers/1.json
  def show
    @game_retailer = GameRetailer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @game_retailer }
    end
  end

  # GET /game_retailers/new
  # GET /game_retailers/new.json
  def new
    @game_retailer = GameRetailer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @game_retailer }
    end
  end

  # GET /game_retailers/1/edit
  def edit
    @game_retailer = GameRetailer.find(params[:id])
  end

  # POST /game_retailers
  # POST /game_retailers.json
  def create
    @game_retailer = GameRetailer.new(params[:game_retailer])

    respond_to do |format|
      if @game_retailer.save
        format.html { redirect_to @game_retailer, notice: 'Game retailer was successfully created.' }
        format.json { render json: @game_retailer, status: :created, location: @game_retailer }
      else
        format.html { render action: "new" }
        format.json { render json: @game_retailer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /game_retailers/1
  # PUT /game_retailers/1.json
  def update
    @game_retailer = GameRetailer.find(params[:id])

    respond_to do |format|
      if @game_retailer.update_attributes(params[:game_retailer])
        format.html { redirect_to @game_retailer, notice: 'Game retailer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @game_retailer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_retailers/1
  # DELETE /game_retailers/1.json
  def destroy
    @game_retailer = GameRetailer.find(params[:id])
    @game_retailer.destroy

    respond_to do |format|
      format.html { redirect_to game_retailers_url }
      format.json { head :no_content }
    end
  end
end
