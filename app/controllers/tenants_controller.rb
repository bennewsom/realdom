# The tenants controller handles all RESTful actions
# for the Tenant resource
class TenantsController < SessionsController

  # Show and edit filter for tenants
  before_action :get_tenant, only: [:show, :edit, :update, :destroy]

  # GET /tenants
  def index
    @tenants = Tenant.paginate(page: params[:page])
  end

  # GET /tenants/:id
  def show
  end

  # GET /tenants/new
  def new
    @tenant = Tenant.new
  end

  # POST /tenants
  def create
    @tenant = Tenant.new(white_listed_parameters)
    if @tenant.save
      flash[:notice] = 'Tenant saved'
      redirect_to tenants_path
    else
      render :new
    end
  end

  # GET /tenants/:id/edit
  def edit
  end

  # PUT /tenants
  def update
    if @tenant.update_attributes(white_listed_parameters)
      flash[:notice] = 'Tenant saved'
      redirect_to tenants_path
    else
      render :edit
    end
  end

  # DELETE /tenants/:id
  def destroy
    @tenant.destroy
    redirect_to tenants_path
  end

  private

  # Get's the tenant from the database, and redirects if unable to find one
  def get_tenant
    begin
      @tenant = Tenant.find(params[:id])
    rescue
      redirect_to tenants_path
    end
  end

  # White lists the corresponding parameters
  def white_listed_parameters
    params
      .require(:tenant)
      .permit(:name, :dob, :gender, :no_of_dependents, :annual_income, :occupation)
  end
end
