class Ticket < ApplicationRecord 
  belongs_to :route, foreign_key: "route_id"
  has_many :passengers
end
