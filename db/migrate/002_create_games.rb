class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :gametype
      t.datetime :created_at
      t.datetime :updated_at
      t.string  :game_result
      t.integer :cards_count
      t.integer :player_id

      t.timestamps
    end
  end
end
