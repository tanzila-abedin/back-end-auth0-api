class AddImgUrlToLaptops < ActiveRecord::Migration[6.1]
  def change
    add_column :laptops, :image_url, :string
  end
end
