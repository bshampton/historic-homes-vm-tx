ActiveAdmin.register Category do
  form do |f|
    f.inputs "Category Form" do
      f.input :name, :label => "Category Name"
      f.buttons
    end
  end
end
