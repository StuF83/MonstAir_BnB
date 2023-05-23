class RenameOwnerColumnInTrucks < ActiveRecord::Migration[7.0]
  def change
    rename_column :trucks, :owner, :owner_id
  end
end
