class Attack < ApplicationRecord
    has_and_belongs_to_many :species
    has_and_belongs_to_many :pokemon
end