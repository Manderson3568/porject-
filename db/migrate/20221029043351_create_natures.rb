class CreateNatures < ActiveRecord::Migration[5.2]
  def change
    create_table :natures do |t|
      t.string :name
      t.string :plus
      t.string :minus
    end
  end
end
