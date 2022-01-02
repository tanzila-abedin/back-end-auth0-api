class AddUserEmailToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :user_email, :string
  end
end
