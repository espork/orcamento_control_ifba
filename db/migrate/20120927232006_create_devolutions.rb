class CreateDevolutions < ActiveRecord::Migration
  def change
    create_table :devolutions do |t|
      t.decimal :value,:precision => 14, :scale => 2
      t.integer :resource_id
      t.string :identification
      t.date :date

      t.timestamps
    end
  end
end
