class AddDefaultUserToAdminUsers < ActiveRecord::Migration
  def change
    # Create a default user
    AdminUser.create!(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password')
  end
end
