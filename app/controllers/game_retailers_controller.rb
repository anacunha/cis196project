class GameRetailersController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /game_retailers
  # GET /game_retailers.json
  def index
    @game_retailers = GameRetailer.order("name ASC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @game_retailers }
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

  # POST /game_retailers
  # POST /game_retailers.json
  def create
    @game_retailer = GameRetailer.new(params[:game_retailer])

    respond_to do |format|
      if @game_retailer.save
        format.html { redirect_to game_retailers_path, notice: 'Game retailer was successfully created.' }
        format.json { render json: @game_retailer, status: :created, location: @game_retailer }
      else
        format.html { render action: "new" }
        format.json { render json: @game_retailer.errors, status: :unprocessable_entity }
      end
    end
  end
end
