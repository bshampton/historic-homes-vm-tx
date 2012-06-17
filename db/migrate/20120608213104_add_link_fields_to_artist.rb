class AddLinkFieldsToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :link1, :string
    add_column :artists, :link2, :string
    add_column :artists, :link3, :string
    add_column :artists, :link4, :string
  end
end
