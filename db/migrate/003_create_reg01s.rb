class CreateReg01s < ActiveRecord::Migration[5.0]
  def change
    create_table :reg01s do |t|
      t.integer :user_id
      t.integer :game_id
      t.integer :regno
      t.string  :gametype
      t.integer :gamestats
      t.integer :rounds_count
      t.integer :number01

      t.timestamps
    end
  end
end
