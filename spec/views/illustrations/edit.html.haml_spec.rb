require 'rails_helper'

RSpec.describe "illustrations/edit", type: :view do
  before(:each) do
    @illustration = assign(:illustration, Illustration.create!(
      :title => "MyString",
      :blurb => "MyString"
    ))
  end

  it "renders the edit illustration form" do
    render

    assert_select "form[action=?][method=?]", illustration_path(@illustration), "post" do

      assert_select "input#illustration_title[name=?]", "illustration[title]"

      assert_select "input#illustration_blurb[name=?]", "illustration[blurb]"
    end
  end
end
