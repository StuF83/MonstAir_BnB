class AddOwnerToTrucks < ActiveRecord::Migration[7.0]
  def change
    add_column :trucks, :owner, :integer
  end
end
