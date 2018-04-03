class CreateShops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.string :name
      t.text :detail
      t.integer :user_id

      t.timestamps
    end
  end
end
