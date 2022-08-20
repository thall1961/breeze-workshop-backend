class CreateStations < ActiveRecord::Migration[6.1]
  def change
    create_table :stations do |t|
      t.boolean :allowed
      t.string :country_code
      t.string :city_code
      t.string :province_state_code
      t.string :time_zone_code
      t.string :latitude
      t.string :longitude
      t.string :currency_code
      t.boolean :active
      t.string :full_name
      t.string :station_code

      t.timestamps
    end
  end
end
