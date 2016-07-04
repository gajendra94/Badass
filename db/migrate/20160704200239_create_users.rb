class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :score
      t.references :game, index: true, foreign_key: true
      t.references :color, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
