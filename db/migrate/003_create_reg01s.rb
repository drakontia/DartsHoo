class CreateReg01s < ActiveRecord::Migration[5.0]
  def change
    create_table :reg01s do |t|
      t.integer :userid
      t.integer :gameid
      t.integer :regno
      t.string  :gametype
      t.integer :gamestats
      t.integer :roundnum
      t.integer :number01

      t.timestamps
    end
  end
end
