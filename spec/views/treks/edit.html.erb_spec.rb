require 'spec_helper'

describe "treks/edit" do
  before(:each) do
    @trek = assign(:trek, stub_model(Trek,
      :name => "MyString",
      :url => "MyString",
      :diff => "MyString",
      :distance => 1.5,
      :duration => "MyString",
      :desc => "MyText"
    ))
  end

  it "renders the edit trek form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", trek_path(@trek), "post" do
      assert_select "input#trek_name[name=?]", "trek[name]"
      assert_select "input#trek_url[name=?]", "trek[url]"
      assert_select "input#trek_diff[name=?]", "trek[diff]"
      assert_select "input#trek_distance[name=?]", "trek[distance]"
      assert_select "input#trek_duration[name=?]", "trek[duration]"
      assert_select "textarea#trek_desc[name=?]", "trek[desc]"
    end
  end
end
