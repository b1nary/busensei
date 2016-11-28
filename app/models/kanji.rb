class Kanji < ApplicationRecord
  include SearchCop

  search_scope :search do
    attributes :category
  end
end
