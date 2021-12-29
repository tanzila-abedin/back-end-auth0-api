class AddUserSubIndexToUsers < ActiveRecord::Migration[6.1]
  def change
    add_index :users, :user_sub, unique: true
  end
end
