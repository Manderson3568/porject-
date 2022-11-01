class AddDefaultToIvEvValues < ActiveRecord::Migration[5.2]
  def change
    change_column :pokemon, :ev_hp, :integer, :default => 0
    change_column :pokemon, :ev_attack, :integer, :default => 0
    change_column :pokemon, :ev_defense, :integer, :default => 0
    change_column :pokemon, :ev_spatk, :integer, :default => 0
    change_column :pokemon, :ev_spdef, :integer, :default => 0
    change_column :pokemon, :ev_speed, :integer, :default => 0
    change_column :pokemon, :iv_hp, :integer, :default => 0
    change_column :pokemon, :iv_attack, :integer, :default => 0
    change_column :pokemon, :iv_defense, :integer, :default => 0
    change_column :pokemon, :iv_spatk, :integer, :default => 0
    change_column :pokemon, :iv_spdef, :integer, :default => 0
    change_column :pokemon, :iv_speed, :integer, :default => 0
  end
end
