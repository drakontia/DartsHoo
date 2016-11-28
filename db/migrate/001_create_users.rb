class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :dartsliveid
      t.integer :rating
      t.integer :cricketstats
      t.integer :stats01
      t.date :registered_at
      t.date :updated_at

      t.timestamps
    end
  end
end
