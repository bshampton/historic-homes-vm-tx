class Location < ActiveRecord::Base
  attr_accessible :address1, :address2, :city, :name, :state, :zip, :event_id
  
  has_many :events
end
