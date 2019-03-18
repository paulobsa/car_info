class CreateManufacturers < ActiveRecord::Migration[5.2]
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.date :foundation
      t.string :country
      t.string :city

      t.timestamps
    end
  end
end
