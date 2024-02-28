class Station < ApplicationRecord
  belongs_to :route, foreign_key: "route_id"
end
