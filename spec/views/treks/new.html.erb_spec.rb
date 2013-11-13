require 'spec_helper'

describe "treks/new" do
  before(:each) do
    assign(:trek, stub_model(Trek,
      :name => "MyString",
      :url => "MyString",
      :diff => "MyString",
      :distance => 1.5,
      :duration => "MyString",
      :desc => "MyText"
    ).as_new_record)
  end

  it "renders new trek form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", treks_path, "post" do
      assert_select "input#trek_name[name=?]", "trek[name]"
      assert_select "input#trek_url[name=?]", "trek[url]"
      assert_select "input#trek_diff[name=?]", "trek[diff]"
      assert_select "input#trek_distance[name=?]", "trek[distance]"
      assert_select "input#trek_duration[name=?]", "trek[duration]"
      assert_select "textarea#trek_desc[name=?]", "trek[desc]"
    end
  end
end
