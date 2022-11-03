class Team < ApplicationRecord
    belongs_to :user, :optional => true
    has_and_belongs_to_many :pokemon
    validate :max_6_pokemon
    private 
# validates max of 6 pokemon in a team
    def max_6_pokemon        
        if pokemon_ids.count > 6
            errors.add(:pokemon_ids, "you can only have 6 pokemon")
        end
    end
end
