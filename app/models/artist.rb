class Artist < ActiveRecord::Base
  attr_accessible :description, :name, :event_id, :photo, :photo_file_name, :link1, :link2, :link3, :link4

  has_many :events

  has_attached_file :photo,
    :storage => :s3,
    :bucket => ENV['S3_BUCKET_NAME'],
    :s3_credentials => {
      :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
      :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
    },
    :path => "/:style/:filename",
    :styles => { :medium => "300", :thumb => "50" }

end
