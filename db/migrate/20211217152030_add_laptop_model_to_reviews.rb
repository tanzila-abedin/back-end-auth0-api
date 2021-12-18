class AddLaptopModelToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :laptop_model, :string
  end
end
