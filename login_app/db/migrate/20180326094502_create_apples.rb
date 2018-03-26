class CreateApples < ActiveRecord::Migration[5.0]
  def change
    create_table :apples do |t|
      t.string :username
      t.string :password_hash
      t.string :password_salt
    end
  end
end
