class AddNameToTrucks < ActiveRecord::Migration[7.0]
  def change
    add_column :trucks, :name, :string
  end
end
