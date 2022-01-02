class Laptop < ApplicationRecord
  has_many :review
  before_create :slugify

  def slugify
    self.slug = name.parameterize
  end
end
