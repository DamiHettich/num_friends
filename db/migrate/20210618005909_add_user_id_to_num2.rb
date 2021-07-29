class AddUserIdToNum2 < ActiveRecord::Migration[6.1]
  def change
    add_column :num2s, :user_id, :integer
    add_index :num2s, :user_id
  end
end
