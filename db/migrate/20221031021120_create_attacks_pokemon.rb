class CreateAttacksPokemon < ActiveRecord::Migration[5.2]
  def change
    create_table :attacks_pokemon, :id => false do |t|
      t.integer :attack_id
      t.integer :pokemon_id
    end
  end
end
