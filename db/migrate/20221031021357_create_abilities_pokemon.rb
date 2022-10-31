class CreateAbilitiesPokemon < ActiveRecord::Migration[5.2]
  def change
    create_table :abilities_pokemon, :id => false do |t|
      t.integer :ability_id
      t.integer :pokemon_id
    end
  end
end
