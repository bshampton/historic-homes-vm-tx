require 'spec_helper'

describe "artists/new" do
  before(:each) do
    assign(:artist, stub_model(Artist,
      :name => "MyString",
      :location => "MyString",
      :description => "MyString",
      :category => 1
    ).as_new_record)
  end

  it "renders new artist form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => artists_path, :method => "post" do
      assert_select "input#artist_name", :name => "artist[name]"
      assert_select "input#artist_location", :name => "artist[location]"
      assert_select "input#artist_description", :name => "artist[description]"
      assert_select "input#artist_category", :name => "artist[category]"
    end
  end
end
