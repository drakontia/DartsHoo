class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :gametype
      t.datetime :created_at
      t.datetime :updated_at
      t.string :result
      t.integer :reg01s_count
      t.integer :regcrickets_count
      t.integer :player1st
      t.integer :player2nd
      t.integer :player3rd
      t.integer :player4th

      t.timestamps
    end
  end
end
