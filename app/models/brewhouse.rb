class Brewhouse < ApplicationRecord
    has_many :favorites
    has_many :users, through: :favorites
end
