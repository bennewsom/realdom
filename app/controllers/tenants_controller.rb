class TenantsController < ApplicationController
  def index
    byebug
    @tenants = Tenant.all
    puts @tenants
  end
end
