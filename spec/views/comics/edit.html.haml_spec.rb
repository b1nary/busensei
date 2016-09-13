require 'rails_helper'

RSpec.describe "comics/edit", type: :view do
  before(:each) do
    @comic = assign(:comic, Comic.create!(
      :title => "MyString",
      :blurb => "MyString"
    ))
  end

  it "renders the edit comic form" do
    render

    assert_select "form[action=?][method=?]", comic_path(@comic), "post" do

      assert_select "input#comic_title[name=?]", "comic[title]"

      assert_select "input#comic_blurb[name=?]", "comic[blurb]"
    end
  end
end
