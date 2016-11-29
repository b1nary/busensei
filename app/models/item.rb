class Item < ApplicationRecord
  include SearchCop

  search_scope :search do
    attributes :category
  end

  def create_slug
    self.slug = self.reading.downcase.strip.gsub(' ', '-')
  end

  before_save :create_slug
end
