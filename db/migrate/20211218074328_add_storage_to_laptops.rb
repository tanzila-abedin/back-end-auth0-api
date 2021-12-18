class AddStorageToLaptops < ActiveRecord::Migration[6.1]
  def change
    add_column :laptops, :storage, :string
  end
end
