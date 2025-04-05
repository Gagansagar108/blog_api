class CreateUsersTable < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, null: false
      t.integer :age 
      t.string :mobile
      t.string :mobile_country_code
      t.string :status, default: true
      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
