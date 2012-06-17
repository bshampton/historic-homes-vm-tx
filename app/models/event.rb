class Event < ActiveRecord::Base
  attr_accessible :date, :duration, :link, :name, :start_hour, :start_minute, :artist_id, :location_id, :category_id, :timeperiod

  belongs_to :artist
  belongs_to :location
  belongs_to :category


end
