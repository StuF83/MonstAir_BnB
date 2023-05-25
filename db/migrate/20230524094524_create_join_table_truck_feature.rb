class CreateJoinTableTruckFeature < ActiveRecord::Migration[7.0]
  def change
    create_join_table :trucks, :features, table_name: :truck_feature do |t|
      t.index :truck_id
      t.index :feature_id
    end
  end
end
