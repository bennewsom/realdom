# The tenants controller handles all RESTful actions
# for the Tenant resource
class TenantsController < ApplicationController
  # GET /tenants
  def index
    @tenants = Tenant.all
  end
end
