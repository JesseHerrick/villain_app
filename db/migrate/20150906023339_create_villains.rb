class CreateVillains < ActiveRecord::Migration
  def change
    create_table :villains do |t|
      t.string :name
      t.text :description
      t.boolean :at_large

      t.timestamps null: false
    end
  end
end
