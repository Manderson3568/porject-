class Pokemon < ApplicationRecord
    belongs_to :item, :optional => true
    belongs_to :species
    belongs_to :nature, :optional => true
end
