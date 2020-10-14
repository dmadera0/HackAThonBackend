class User < ApplicationRecord
    has_many :favorites
    has_many :brewhouses, through: :favorites
end
