class CreateBreweries < ActiveRecord::Migration
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :location
      t.string :notes
      t.integer :user_id
    end
  end

end
