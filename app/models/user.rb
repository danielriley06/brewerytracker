class User < ActiveRecord::Base

  has_secure_password

  has_many :breweries
  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods
end
