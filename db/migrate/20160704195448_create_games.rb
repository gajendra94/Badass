class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :size
      t.int :max_player
      t.integer :min_player
      t.integer :blocking_time
      t.boolean :active

      t.timestamps null: false
    end
  end
end
