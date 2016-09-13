require 'rails_helper'

RSpec.describe "comics/show", type: :view do
  before(:each) do
    @comic = assign(:comic, Comic.create!(
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
