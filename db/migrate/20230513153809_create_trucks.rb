class CreateTrucks < ActiveRecord::Migration[7.0]
  def change
    create_table :trucks do |t|
      t.string :model
      t.string :make
      t.float :daily_fee
      t.string :description
      t.float :height
      t.float :wheel_height

      t.timestamps
    end
  end
end
