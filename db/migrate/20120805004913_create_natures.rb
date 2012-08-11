class CreateNatures < ActiveRecord::Migration
  def change
    create_table :natures do |t|
      t.string :ev
      t.string :esf
      t.string :ptres
      t.string :fonte
      t.string :nd
      t.string :pi

      t.timestamps
    end
  end
end
