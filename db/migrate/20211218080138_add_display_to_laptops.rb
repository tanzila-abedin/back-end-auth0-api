class AddDisplayToLaptops < ActiveRecord::Migration[6.1]
  def change
    add_column :laptops, :display, :string
  end
end
