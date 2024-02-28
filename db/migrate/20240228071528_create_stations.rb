class CreateStations < ActiveRecord::Migration[7.0]
  def change
    create_table :stations do |t|
      t.string :station_name
      t.string :arrival
      t.string :departure
      t.string :distance
      t.string :seats
      t.belongs_to :route,foreign_key: "route_id"
      t.timestamps
    end
  end
end
