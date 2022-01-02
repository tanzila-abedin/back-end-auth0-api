class AddProcessorToLaptops < ActiveRecord::Migration[6.1]
  def change
    add_column :laptops, :processor, :string
  end
end
