class AddAmazonToLaptops < ActiveRecord::Migration[6.1]
  def change
    add_column :laptops, :amazon, :string
  end
end
