class RemoveStringFromLaptops < ActiveRecord::Migration[6.1]
  def change
    remove_column :laptops, :string, :string
  end
end
