class CreateRegisters < ActiveRecord::Migration[5.2]
  def change
    create_table :registers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :city
      t.integer :pincode
      t.string :password

      t.timestamps
    end
  end
end
