class CreateCages < ActiveRecord::Migration[6.1]
  def change
    create_table :cages do |t|
      t.integer :maxCapacity
      t.integer :currCapacity
      t.boolean :powerOn

      t.timestamps
    end
  end
end
