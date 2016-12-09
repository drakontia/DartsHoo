class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string  :card_name
      t.text    :card_number
      t.float    :statscricket
      t.float    :stats01
      t.integer  :reg01s_count
      t.integer  :regcrickets_count
      t.integer :user_id
      t.integer :game_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end

    add_index :cards, :card_number, unique: true
  end
end
