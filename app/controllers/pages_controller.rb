class PagesController < ApplicationController
  layout "application"
  def home
    @title = ' | Home'
    @body_id = 'home'
    @body_class = 'page'
  end

  def monitor
    render :layout => nil
  end

end