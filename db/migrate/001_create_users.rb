class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   :user_name, null: false
      t.integer  :dartslive_id
      t.string   :rating
      t.integer  :ratingnum
      t.integer  :statscricket
      t.integer  :stats01
      t.datetime :created_at
      t.datetime :updated_at
      t.string   :email, null: false
      t.string   :password_digest, null: false

      t.timestamps null: false
    end

    add_index :users, :email, unique: true
  end
end
