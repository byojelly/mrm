class CreateManufacturers < ActiveRecord::Migration[5.1]
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.integer :category_id
      t.integer :item_id

      t.timestamps
    end
  end
end
