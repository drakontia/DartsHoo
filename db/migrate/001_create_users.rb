class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   :user_name
      t.string   :email
      t.string   :password_digest
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
