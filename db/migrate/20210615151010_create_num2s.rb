class CreateNum2s < ActiveRecord::Migration[6.1]
  def change
    create_table :num2s do |t|
      t.string :person_name
      t.string :rut
      t.string :bank
      t.string :acc_type
      t.integer :acc_number
      t.string :email

      t.timestamps
    end
  end
end
