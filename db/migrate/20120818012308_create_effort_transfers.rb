class CreateEffortTransfers < ActiveRecord::Migration
  def change
    create_table :effort_transfers do |t|
      t.date :date
      t.string :obs
      t.integer :transfer_id
      t.decimal :value,:precision => 14, :scale => 2
      t.string :identification
      t.timestamps
    end
  end
end
