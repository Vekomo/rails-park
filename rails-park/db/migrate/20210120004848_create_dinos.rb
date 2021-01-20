class CreateDinos < ActiveRecord::Migration[6.1]
  def change
    create_table :dinos do |t|
      t.references :cage, null: false, foreign_key: true
      t.string :name
      t.string :species
      t.boolean :isCarnivore

      t.timestamps
    end
  end
end
