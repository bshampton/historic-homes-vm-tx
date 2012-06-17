class AboutController < ApplicationController
  layout "application"

  # GET /
  def index
    @body_id = "about"
    @body_class = "page"
  end
  
end