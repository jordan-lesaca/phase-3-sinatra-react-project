class Museum < ActiveRecord::Base
    has_many :paintings
    has_many :artist, through: paintings
end