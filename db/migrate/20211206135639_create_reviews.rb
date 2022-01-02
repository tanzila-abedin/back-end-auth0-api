class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :description
      t.integer :rating
      t.bigint :user_id
      t.bigint :laptop_id

      t.timestamps
    end
    add_index :reviews, :user_id
    add_index :reviews, :laptop_id
  end
end
