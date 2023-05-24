class Feature < ApplicationRecord
  has_and_belongs_to_many :trucks, join_table: :truck_feature
end
