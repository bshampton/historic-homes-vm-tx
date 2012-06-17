class ArtistsController < InheritedResources::Base
  layout "application"
  def index
    @events = Event.find(:all, :joins => [:category,:artist], :order => 'categories.name ASC, artists.name ASC')
    @current_category = ""
    @current_artist = ""
    @last_location=""
  end

  def artist_detail
    @artist = Artist.find(params[:id])
    @event = Event.where("artist_id=?", @artist.id)
  end

end
