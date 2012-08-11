class CreateTransfers < ActiveRecord::Migration
  def change
    create_table :transfers do |t|
      t.integer :nature_id
      t.decimal :value
      t.integer :unit_id

      t.timestamps
    end
  end
end
