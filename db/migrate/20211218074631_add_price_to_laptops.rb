class AddPriceToLaptops < ActiveRecord::Migration[6.1]
  def change
    add_column :laptops, :price, :string
  end
end
