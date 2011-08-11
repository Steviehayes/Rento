require 'spec_helper'

describe "artists/edit.html.erb" do
  before(:each) do
    @artist = assign(:artist, stub_model(Artist,
      :title => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :url => "MyString"
    ))
  end

  it "renders the edit artist form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => artists_path(@artist), :method => "post" do
      assert_select "input#artist_title", :name => "artist[title]"
      assert_select "input#artist_first_name", :name => "artist[first_name]"
      assert_select "input#artist_last_name", :name => "artist[last_name]"
      assert_select "input#artist_url", :name => "artist[url]"
    end
  end
end
