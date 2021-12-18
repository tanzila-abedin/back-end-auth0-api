class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :user_sub
      t.string :email

      t.timestamps
    end
  end
end
