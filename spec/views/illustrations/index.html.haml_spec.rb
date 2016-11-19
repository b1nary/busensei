require 'rails_helper'

RSpec.describe "illustrations/index", type: :view do
  before(:each) do
    assign(:illustrations, [
      Illustration.create!(
        :title => "Title",
        :blurb => "Blurb"
      ),
      Illustration.create!(
        :title => "Title",
        :blurb => "Blurb"
      )
    ])
  end

  it "renders a list of illustrations" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Blurb".to_s, :count => 2
  end
end
