class CreateEfforts < ActiveRecord::Migration
  def change
    create_table :efforts do |t|
      t.integer :resource_id
      t.string :identification
      t.date :date
      t.decimal :value,:precision => 14, :scale => 2
      t.string :obs

      t.timestamps
    end
  end
end
