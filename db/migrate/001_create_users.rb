class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   :user_name
      t.integer  :dartslive_id
      t.float    :statscricket
      t.float    :stats01
      t.datetime :created_at
      t.datetime :updated_at
      t.string   :email
      t.string   :password_digest

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
