class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :player_score
      t.integer :game_score
      t.references :player, index: true, foreign_key: true
      t.references :game, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
