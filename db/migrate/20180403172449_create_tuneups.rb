class CreateTuneups < ActiveRecord::Migration[5.1]
  def change
    create_table :tuneups do |t|
      t.date :date
      t.integer :item_id
      t.integer :technician_id

      t.timestamps
    end
  end
end
