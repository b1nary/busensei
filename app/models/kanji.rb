class Kanji < ApplicationRecord
  searchable do
    text :word, :category
    time :published_at
    time :expired_at
  end
end
