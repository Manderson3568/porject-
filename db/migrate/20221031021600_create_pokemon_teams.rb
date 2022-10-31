class CreatePokemonTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemon_teams, :id => false do |t|
      t.integer :pokemon_id
      t.integer :team_id
    end
  end
end
