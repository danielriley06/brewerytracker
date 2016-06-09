class Fixlocationcolumn < ActiveRecord::Migration
  def change
    rename_column :breweries, :location, :city
    add_column :breweries, :state, :string
  end
end
