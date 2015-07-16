class HomeController < ApplicationController
  def index
    redirect_to tenants_path if user_signed_in?
  end
end
