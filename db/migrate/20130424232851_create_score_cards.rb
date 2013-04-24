class CreateScoreCards < ActiveRecord::Migration
  def change
    create_table :score_cards do |t|
      t.integer :player_id
      t.integer :score_board_id
      t.integer :points, :default => 0

      t.timestamps
    end
  end
end
