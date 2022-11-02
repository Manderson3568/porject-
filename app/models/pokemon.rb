class Pokemon < ApplicationRecord
    belongs_to :item, :optional => true
    belongs_to :species
    has_and_belongs_to_many :abilities
    belongs_to :nature, :optional => true
    belongs_to :user, :optional => true
    has_and_belongs_to_many :teams
    has_and_belongs_to_many :attacks
    validates :ev_hp, numericality: {less_than_or_equal_to: 255}
    validates :ev_attack, numericality: {less_than_or_equal_to: 255}
    validates :ev_defense, numericality: {less_than_or_equal_to: 255}
    validates :ev_spatk, numericality: {less_than_or_equal_to: 255}
    validates :ev_spdef, numericality: {less_than_or_equal_to: 255}
    validates :ev_speed, numericality: {less_than_or_equal_to: 255}
    validates :iv_hp, numericality: {less_than_or_equal_to: 31}
    validates :iv_attack, numericality: {less_than_or_equal_to: 31}
    validates :iv_defense, numericality: {less_than_or_equal_to: 31}
    validates :iv_spatk, numericality: {less_than_or_equal_to: 31}
    validates :iv_spdef, numericality: {less_than_or_equal_to: 31}
    validates :iv_speed, numericality: {less_than_or_equal_to: 31}
    validate :ev_total, :max_4_attacks
    private
    def ev_total
        if !ev_attack.nil? && !ev_defense.nil? && !ev_hp.nil? && !ev_spatk.nil? && !ev_spdef.nil? && !ev_speed.nil?
            if (ev_attack + ev_defense + ev_hp + ev_spatk + ev_spdef+ ev_speed) >510
                errors.add(:ev_attack, "total EV's can't be greater than 510")
            end
        end
    end

    def max_4_attacks
        if attack_ids.count > 4
            errors.add(:attack_ids, "you can only have 4 attacks")
        end
    end
end
