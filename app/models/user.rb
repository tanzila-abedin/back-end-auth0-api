class User < ApplicationRecord
  has_many :reviews
  validates :user_sub, :email, presence: true, uniqueness: { case_sensitive: false }
end
