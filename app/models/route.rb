class Route < ApplicationRecord
  has_many :stations
  has_many :tickets
end
