class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :year
      t.string :condition
      t.text :detail
      t.string :type
      t.boolean :available, default: true
      t.integer :quantity, default: 1
      t.integer :shop_id

      t.timestamps
    end
  end
end
