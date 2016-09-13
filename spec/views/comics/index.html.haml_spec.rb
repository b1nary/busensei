require 'rails_helper'

RSpec.describe "comics/index", type: :view do
  before(:each) do
    assign(:comics, [
      Comic.create!(
        :title => "Title",
        :blurb => "Blurb"
      ),
      Comic.create!(
        :title => "Title",
        :blurb => "Blurb"
      )
    ])
  end

  it "renders a list of comics" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Blurb".to_s, :count => 2
  end
end
