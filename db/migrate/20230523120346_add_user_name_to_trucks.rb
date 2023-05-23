class AddUserNameToTrucks < ActiveRecord::Migration[7.0]
  def change
    add_column :trucks, :owner_name, :string
  end
end
