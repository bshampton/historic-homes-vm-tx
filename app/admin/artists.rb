ActiveAdmin.register Artist do
  form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Details" do
    f.input :name
    f.input :description
    f.input :link1
    f.input :link2
    f.input :link3
    f.input :link4
    f.input :photo, :as => :file, :hint => f.template.image_tag(f.object.photo.url(:thumb))
  end
  f.buttons
 end

 index do
    column :name
    default_actions
  end

end
