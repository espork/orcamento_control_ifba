class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.string :nc_number
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
