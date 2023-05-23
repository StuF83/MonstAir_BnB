class ChangeNameColumnsInTrucks < ActiveRecord::Migration[7.0]
  def change
    rename_column :trucks, :owner_name, :owner_first_name
    add_column :trucks, :owner_second_name, :string
  end
end
