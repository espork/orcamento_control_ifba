class CreateDevolutionTransfers < ActiveRecord::Migration
  def change
    create_table :devolution_transfers do |t|
      t.decimal :value,:precision => 14, :scale => 2
      t.integer :transfer_id
      t.string :identification
      t.date :date

      t.timestamps
    end
  end
end
