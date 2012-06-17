class CalendarController < ApplicationController
  layout "application"

  # GET /
  def index
    @body_id = "calendar"
    @body_class = "page"
    @events = Event.order("date ASC, timeperiod ASC, start_hour ASC, start_minute ASC")
    @thisDate=""
  end

end