ActiveAdmin.register Event do

  index do
    column :name
    column :date
    column :location
    column :artist
    default_actions
  end

START_HOURS  = [ ["1",1], ["2",2], ["3",3],["4",4], ["5",5], ["6",6],["7",7], ["8",8], ["9",9],["10",10], ["11",11], ["12",12] ]
START_MINUTES  = [ ["00",00], ["15",15], ["30",30],["45",45] ]
START_TIMEPERIODS = [ ["AM","AM"], ["PM","PM"] ]

  form do |f|
    f.inputs "Event Form" do
      f.input :name, :label => "Event Name"
      f.input :artist_id, :as => :select, :collection => Artist.all.map{ |artist| [artist.name, artist.id] }
      f.input :location_id, :as => :select, :collection => Location.all.map{ |location| [location.name, location.id] }
      f.input :date
      f.input :start_hour, :as => :select, :collection => START_HOURS
      f.input :start_minute, :as => :select, :collection => START_MINUTES
      f.input :timeperiod, :as => :select, :collection => START_TIMEPERIODS, :label => "AM/PM"
      f.input :duration
      f.input :link
      f.input :category_id, :as => :select, :collection => Category.all.map{ |category| [category.name, category.id] }
      f.buttons
    end
  end
end
