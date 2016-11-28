class CreateRegCrickets < ActiveRecord::Migration[5.0]
  def change
    create_table :regcrickets do |t|
      t.integer :userid
      t.integer :gameid
      t.integer :regno
      t.string  :gametype
      t.integer :gamestats
      t.integer :roundnum
      t.integer :mark20
      t.integer :mark19
      t.integer :mark18
      t.integer :mark17
      t.integer :mark16
      t.integer :mark15
      t.integer :markbull

      t.timestamps
    end
  end
end
