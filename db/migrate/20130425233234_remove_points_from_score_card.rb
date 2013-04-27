# types
#:binary
#:boolean
#:date
#:datetime
#:decimal
#:float
#:integer
#:primary_key
#:string
#:text
#:time
#:timestamp
# actions
#add_column
#add_index
#change_column
#change_table
#create_table
#drop_table
#remove_column
#remove_index
#rename_column
# options
#default => true, :null => false
# foreign key
#create_table :products do |t|
#  t.references :category
#end
class RemovePointsFromScoreCard < ActiveRecord::Migration
  def up
    remove_column :score_cards, :points
  end

  def down
    add_column :score_cards, :points, :integer
  end
end
