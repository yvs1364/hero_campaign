class User < ApplicationRecord
  belongs_to :adventure, optional: true 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :pseudo, presence: true, uniqueness: true
  validates :level, presence: true
  validates :breed, presence: true
  validates :category, presence: true
end
