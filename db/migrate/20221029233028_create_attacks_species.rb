class CreateAttacksSpecies < ActiveRecord::Migration[5.2]
  def change
    create_table :attacks_species, :id => false  do |t|
      t.integer :attack_id
      t.integer :species_id
    end
  end
end
