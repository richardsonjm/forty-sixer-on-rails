require 'spec_helper'

describe "treks/show" do
  before(:each) do
    @trek = assign(:trek, stub_model(Trek,
      :name => "Name",
      :url => "Url",
      :diff => "Diff",
      :distance => 1.5,
      :duration => "Duration",
      :desc => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Url/)
    rendered.should match(/Diff/)
    rendered.should match(/1.5/)
    rendered.should match(/Duration/)
    rendered.should match(/MyText/)
  end
end
