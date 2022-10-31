class Pokemon < ApplicationRecord
    belongs_to :item, :optional => true
    belongs_to :species
    belongs_to :nature, :optional => true
    belongs_to :user, :optional => true
    has_and_belongs_to_many :teams
    has_and_belongs_to_many :attacks
end
