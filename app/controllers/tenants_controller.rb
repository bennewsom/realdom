# The tenants controller handles all RESTful actions
# for the Tenant resource
class TenantsController < ApplicationController
  # GET /tenants
  def index
    @tenants = Tenant.all
  end

  # GET /tenants/:id
  def show
    begin
      @tenant = Tenant.find(params[:id])
    rescue
      redirect_to tenants_url
    end
  end

  # GET /tenants/new
  def new
    @tenant = Tenant.new
  end

  # POST /tenants
  def create
    tenant_params = params
      .require(:tenant)
      .permit(:name, :dob, :gender, :no_of_dependents, :annual_income, :occupation)
    @tenant = Tenant.new(tenant_params)
    if @tenant.save
      flash[:notice] = 'Tenant saved, yay baby!'
      redirect_to tenants_url
    else
      render :new
    end
  end

  # GET /tenants/:id/edit
  def edit
    begin
      @tenant = Tenant.find(params[:id])
    rescue
      redirect_to tenants_url
    end
  end

  # PUT /tenants
  def update
    tenant_params = params
      .require(:tenant)
      .permit(:name, :dob, :gender, :no_of_dependents, :annual_income, :occupation)
    @tenant = Tenant.find(params[:id])
    if @tenant.update_attributes(tenant_params)
      flash[:notice] = 'Tenant updated, yay baby!'
      redirect_to tenants_url
    else
      render :edit
    end
  end
end
