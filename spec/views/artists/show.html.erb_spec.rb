require 'spec_helper'

describe "artists/show" do
  before(:each) do
    @artist = assign(:artist, stub_model(Artist,
      :name => "Name",
      :location => "Location",
      :description => "Description",
      :category => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Location/)
    rendered.should match(/Description/)
    rendered.should match(/1/)
  end
end
