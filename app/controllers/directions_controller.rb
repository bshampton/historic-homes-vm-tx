class DirectionsController < ApplicationController
  layout "application"

  # GET /
  def index
    @body_id = "map"
    @body_class = "page"
  end

  # GET /
  def parking
    @body_id = "parking"
    @body_class = "page"
  end
  
end