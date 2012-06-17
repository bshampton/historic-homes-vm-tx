class AddPeriodToTimeForEvent < ActiveRecord::Migration
  def change
    add_column :events, :timeperiod, :string
  end
end
