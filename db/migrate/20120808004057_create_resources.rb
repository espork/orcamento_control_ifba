class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.integer :nature_id
      t.decimal :value, :precision => 14, :scale => 2
      t.integer :budget_id
      t.timestamps
    end
  end
end
