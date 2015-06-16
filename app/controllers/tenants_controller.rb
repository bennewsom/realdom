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
end
