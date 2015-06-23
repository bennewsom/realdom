# Contains the actions for the landlord resource
class LandlordsController < ApplicationController
  # GET /landlords
  def index
    @landlords = Landlord.all
  end

  # GET /landlords/:id
  def show
    @landlord = Landlord.find(params[:id])
  end

  # GET /landlords/new
  def new
    @landlord = Landlord.new
  end

  # POST /landlords
  def create
    landlord_params = params
      .require(:landlord)
      .permit(:name, :dob, :gender)
    @landlord = Landlord.new(landlord_params)
    if @landlord.save
      flash[:notice] = 'Landlord saved, yay baby!'
      redirect_to landlords_path
    else
      render :new
    end
  end

  # GET /landlords/:id/edit
  def edit
    @landlord = Landlord.find(params[:id])
  end

  # PUT /landlords/:id
  def update
    landlord_params = params
      .require(:landlord)
      .permit(:name, :dob, :gender)
    @landlord = Landlord.find(params[:id])
    if @landlord.update_attributes(landlord_params)
      flash[:notice] = 'Landlord updated, yay baby!'
      redirect_to landlords_path
    else
      render :edit
    end
  end
end
