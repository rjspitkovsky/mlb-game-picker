class CreatePicks < ActiveRecord::Migration[5.2]
  def change
    create_table :picks do |t|
      t.date :date
      t.string :winners
      t.integer :user_id 
    end
  end
end
