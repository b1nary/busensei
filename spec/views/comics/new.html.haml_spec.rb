require 'rails_helper'

RSpec.describe "comics/new", type: :view do
  before(:each) do
    assign(:comic, Comic.new(
      :title => "MyString",
      :blurb => "MyString"
    ))
  end

  it "renders new comic form" do
    render

    assert_select "form[action=?][method=?]", comics_path, "post" do

      assert_select "input#comic_title[name=?]", "comic[title]"

      assert_select "input#comic_blurb[name=?]", "comic[blurb]"
    end
  end
end
