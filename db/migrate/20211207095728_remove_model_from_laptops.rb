class RemoveModelFromLaptops < ActiveRecord::Migration[6.1]
  def change
    remove_column :laptops, :model, :string
  end
end
