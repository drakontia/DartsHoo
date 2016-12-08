class CreateRounds < ActiveRecord::Migration[5.0]
  def change
    create_table :rounds do |t|
      t.integer :reg01_id
      t.integer :regcricket_id
      t.integer :roundno
      t.string :shot1st
      t.string :shot2nd
      t.string :shot3rd
      t.string :round_result

      t.timestamps
    end
  end
end
