# Contains the actions for the landlord resource
class LandlordsController < SessionsController

  # Tenants filters
  before_action :get_landlord, only: [:show, :edit, :update, :destroy]

  # GET /landlords
  def index
    @landlords = Landlord.all
  end

  # GET /landlords/:id
  def show
  end

  # GET /landlords/new
  def new
    @landlord = Landlord.new
  end

  # POST /landlords
  def create
    @landlord = Landlord.new(white_listed_parameters)
    if @landlord.save
      flash[:notice] = 'Landlord saved'
      redirect_to landlords_path
    else
      render :new
    end
  end

  # GET /landlords/:id/edit
  def edit
  end

  # PUT /landlords/:id
  def update
    if @landlord.update_attributes(white_listed_parameters)
      flash[:notice] = 'Landlord saved'
      redirect_to landlords_path
    else
      render :edit
    end
  end

  # DELETE /landlords/:id
  def destroy
    @landlord.destroy
    redirect_to landlords_path
  end

  private

  # Get's the tenant from the database, and redirects if unable to find one
  def get_landlord
    begin
      @landlord = Landlord.find(params[:id])
    rescue
      redirect_to landlords_path
    end
  end

  def white_listed_parameters
    params
      .require(:landlord)
      .permit(:name, :dob, :gender)
  end
end
