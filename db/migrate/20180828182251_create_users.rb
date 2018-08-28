class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :favorite_team
      t.integer :correct_picks, default: 0
      t.integer :incorrect_picks, default: 0
    end 
  end
end
