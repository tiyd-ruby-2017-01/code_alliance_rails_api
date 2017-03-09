class CreateLicenses < ActiveRecord::Migration[5.0]
  def change
    create_table :licenses do |t|
      t.references :product, foreign_key: true
      t.references :user, foreign_key: true
      t.datetime :expiration
      t.decimal :amount_paid, precision: 8, scale: 2

      t.timestamps
    end
  end
end
