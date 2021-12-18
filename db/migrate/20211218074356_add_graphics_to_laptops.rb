class AddGraphicsToLaptops < ActiveRecord::Migration[6.1]
  def change
    add_column :laptops, :graphics, :string
  end
end
