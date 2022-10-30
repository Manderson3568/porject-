class CreateAbilitiesSpecies < ActiveRecord::Migration[5.2]
  def change
    create_table :abilities_species, :id => false do |t|
      t.integer :ability_id
      t.integer :species_id
    end
  end
end
