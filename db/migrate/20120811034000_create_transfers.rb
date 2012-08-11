class CreateTransfers < ActiveRecord::Migration
  def change
    create_table :transfers do |t|
      t.string :identification
      t.integer :resource_id
      t.decimal :value,:precision => 14, :scale => 2
      t.integer :unit_id
      t.date :date
      t.string :obs
      t.timestamps
    end
  end
end
