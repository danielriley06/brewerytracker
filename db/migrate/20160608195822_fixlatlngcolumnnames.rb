class Fixlatlngcolumnnames < ActiveRecord::Migration
  def change
    rename_column :breweries, :lat, :latitude
    rename_column :breweries, :lng, :longitude
  end
end
