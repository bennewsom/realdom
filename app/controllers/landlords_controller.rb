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

  # POST /tenants
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
end
