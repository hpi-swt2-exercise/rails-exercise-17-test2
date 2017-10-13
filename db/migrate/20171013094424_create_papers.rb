class CreatePapers < ActiveRecord::Migration
  def change
  	create_table :papers do |t|
      t.references :authors, index: true, foreign_key: true

      t.string :title
      t.string :venue
      t.integer :year

      t.timestamps null: false
    end
  end
end
