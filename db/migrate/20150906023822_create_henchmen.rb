class CreateHenchmen < ActiveRecord::Migration
  def change
    create_table :henchmen do |t|
      t.string :name
      t.references :villain, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
