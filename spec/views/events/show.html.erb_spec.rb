require 'spec_helper'

describe "events/show" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :name => "Name",
      :duration => "Duration",
      :link => "Link"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Duration/)
    rendered.should match(/Link/)
  end
end
