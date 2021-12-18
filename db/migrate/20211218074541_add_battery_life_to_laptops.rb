class AddBatteryLifeToLaptops < ActiveRecord::Migration[6.1]
  def change
    add_column :laptops, :battery_life, :string
  end
end
