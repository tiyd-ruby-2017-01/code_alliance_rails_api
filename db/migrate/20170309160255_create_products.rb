class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :developer
      t.string :institution
      t.decimal :fee, precision: 8, scale: 2

      t.timestamps
    end
  end
end
