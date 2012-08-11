class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :effort_id
      t.string :identification
      t.date :date
      t.date :nf_date
      t.string :nf_number
      t.decimal :value,:precision => 14, :scale => 2
      t.string :favored
      t.string :identify

      t.timestamps
    end
  end
end
