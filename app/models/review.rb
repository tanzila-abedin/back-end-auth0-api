class Review < ApplicationRecord
  belongs_to :laptop
  belongs_to :user
end
