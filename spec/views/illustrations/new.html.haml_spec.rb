require 'rails_helper'

RSpec.describe "illustrations/new", type: :view do
  before(:each) do
    assign(:illustration, Illustration.new(
      :title => "MyString",
      :blurb => "MyString"
    ))
  end

  it "renders new illustration form" do
    render

    assert_select "form[action=?][method=?]", illustrations_path, "post" do

      assert_select "input#illustration_title[name=?]", "illustration[title]"

      assert_select "input#illustration_blurb[name=?]", "illustration[blurb]"
    end
  end
end
