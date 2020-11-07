class Breed < ApplicationRecord
  has_one :user
  validate :nameofbreed
  validate :category
  serialize :category, Array
end
