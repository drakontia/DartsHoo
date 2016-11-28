class CreateRounds < ActiveRecord::Migration[5.0]
  def change
    create_table :rounds do |t|
      t.integer :regid
      t.integer :roundno
      t.string :shot1st
      t.string :shot2nd
      t.string :shot3rd

      t.timestamps
    end
  end
end
