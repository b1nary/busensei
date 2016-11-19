require 'rails_helper'

RSpec.describe "illustrations/show", type: :view do
  before(:each) do
    @illustration = assign(:illustration, Illustration.create!(
      :title => "Title",
      :blurb => "Blurb"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Blurb/)
  end
end
