require 'spec_helper'

describe "artists/index.html.erb" do
  before(:each) do
    assign(:artists, [
      stub_model(Artist,
        :title => "Title",
        :first_name => "First Name",
        :last_name => "Last Name",
        :url => "Url"
      ),
      stub_model(Artist,
        :title => "Title",
        :first_name => "First Name",
        :last_name => "Last Name",
        :url => "Url"
      )
    ])
  end

  it "renders a list of artists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
