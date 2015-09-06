class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.text :notes
      t.references :villain, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
