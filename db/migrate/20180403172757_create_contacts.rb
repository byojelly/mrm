class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name, default: "UPDATE"
      t.string :address, default: "UPDATE"
      t.string :city, default: "UPDATE"
      t.string :state, default: "NJ"
      t.string :zip, default: "00000"
      t.string :phone, default: "0000000000"
      t.integer :user_id

      t.timestamps
    end
  end
end
