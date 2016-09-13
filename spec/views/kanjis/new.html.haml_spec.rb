require 'rails_helper'

RSpec.describe "kanjis/new", type: :view do
  before(:each) do
    assign(:kanji, Kanji.new(
      :key => 1,
      :word => "MyString",
      :reading => "MyString",
      :meaning => "MyString",
      :notes => "MyString",
      :synonyms => "MyString",
      :opposites => "MyString",
      :found_in => "MyString"
    ))
  end

  it "renders new kanji form" do
    render

    assert_select "form[action=?][method=?]", kanjis_path, "post" do

      assert_select "input#kanji_key[name=?]", "kanji[key]"

      assert_select "input#kanji_word[name=?]", "kanji[word]"

      assert_select "input#kanji_reading[name=?]", "kanji[reading]"

      assert_select "input#kanji_meaning[name=?]", "kanji[meaning]"

      assert_select "input#kanji_notes[name=?]", "kanji[notes]"

      assert_select "input#kanji_synonyms[name=?]", "kanji[synonyms]"

      assert_select "input#kanji_opposites[name=?]", "kanji[opposites]"

      assert_select "input#kanji_found_in[name=?]", "kanji[found_in]"
    end
  end
end
