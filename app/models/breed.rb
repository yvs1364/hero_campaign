class Breed < ApplicationRecord
  belongs_to :user
  validate :nameofbreed
  validate :category
  serialize :category, Array
end
