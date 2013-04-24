class CreateScoreBoards < ActiveRecord::Migration
  def change
    create_table :score_boards do |t|
      t.string :game

      t.timestamps
    end
  end
end
