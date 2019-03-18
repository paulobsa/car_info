class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.references :manufacturer, foreign_key: true
      t.string :model
      t.date :launch_date
      t.integer :transmission

      t.timestamps
    end
  end
end
