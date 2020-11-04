class User < ApplicationRecord
has_one :breeds
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validate :pseudo, presence: true, uniqueness: true
  validate :level, presence: true
end
