class Adventure < ApplicationRecord
    validates :name, presence: true
    has_many :users
    Adventure.limit(1)
end
