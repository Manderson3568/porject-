class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :species_id
      t.integer :nature_id
      t.integer :item_id
      t.integer :ev_hp
      t.integer :ev_attack
      t.integer :ev_defense
      t.integer :ev_spatk
      t.integer :ev_spdef
      t.integer :ev_speed
      t.integer :iv_hp
      t.integer :iv_attack
      t.integer :iv_defense
      t.integer :iv_spatk
      t.integer :iv_spdef
      t.integer :iv_speed
      t.timestamps
    end
  end
end
