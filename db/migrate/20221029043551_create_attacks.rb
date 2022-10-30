class CreateAttacks < ActiveRecord::Migration[5.2]
  def change
    create_table :attacks do |t|
      t.string :name
      t.string :element_type
      t.string :category
      t.integer :pp
      t.integer :power
      t.integer :accuracy
    end
  end
end
