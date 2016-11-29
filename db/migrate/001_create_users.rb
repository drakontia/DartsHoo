class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   :user_name, null: false
      t.integer  :dartsliveid
      t.integer  :rating
      t.integer  :cricketstats
      t.integer  :stats01
      t.datetime :registered_at
      t.datetime :updated_at
      t.string   :email, null: false
      t.string   :password_digest, null: false

      t.timestamps null: false
    end

    add_index :users, :email, unique: true
  end
end
