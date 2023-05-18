class AddLocationToTrucks < ActiveRecord::Migration[7.0]
  def change
    add_column :trucks, :location, :string
  end
end
