class Category < ActiveRecord::Base
  attr_accessible :name, :event_id

  has_many :events

end
