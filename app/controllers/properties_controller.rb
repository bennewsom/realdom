class PropertiesController < SessionsController
  # GET /properties
  def index
    @properties = Property.paginate(page: params[:page])
  end
end
