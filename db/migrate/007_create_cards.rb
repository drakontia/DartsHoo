class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string  :card_name
      t.integer :card_number
      t.integer :user_id

      t.timestamps
    end

    add_index :cards, :card_number, unique: true
  end
end
