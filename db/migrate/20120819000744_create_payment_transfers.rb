class CreatePaymentTransfers < ActiveRecord::Migration
  def change
    create_table :payment_transfers do |t|
      t.date :date
      t.integer :effort_transfer_id
      t.string :favored
      t.string :identify
      t.date :nf_date
      t.string :nf_number
      t.decimal :value,:precision => 14, :scale => 2
      t.string :identification

      t.timestamps
    end
  end
end
