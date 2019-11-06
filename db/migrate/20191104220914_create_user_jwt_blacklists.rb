class CreateUserJwtBlacklists < ActiveRecord::Migration[6.0]
  def change
    create_table :user_jwt_blacklists do |t|
      t.string :jti
      t.datetime :exp

      t.timestamps
    end
    add_index :user_jwt_blacklists, :jti
  end
end
