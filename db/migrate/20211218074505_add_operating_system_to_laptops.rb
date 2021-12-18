class AddOperatingSystemToLaptops < ActiveRecord::Migration[6.1]
  def change
    add_column :laptops, :operating_system, :string
  end
end
