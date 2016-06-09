class Breweries < ActiveRecord::Base
  extend Geocoder::Model::ActiveRecord
  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods

  attr_accessor :latitude, :longitude, :address

  belongs_to :user

  def address
    ["2783 Broad Ave", city, state, "US"].compact.join(', ')
  end

  validates :address, :presence => true

  geocoded_by :address
  before_save :geocode

end
