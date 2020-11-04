class Breed < ApplicationRecord
  validate :nameofbreed
  validate :category
  serialize :category, Array
end
