class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :email
      t.string :hand
      t.integer :grade

      t.timestamps null: false
    end
  end
end
