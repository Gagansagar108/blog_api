class CreateUsersTable < ActiveRecord::Migration[8.0]
  def change
    create_table :users_tables do |t|
      t.string :name
      t.string :email, index: true, null: false, unique: true
      t.integer :age 
      t.string :mobile
      t.string :mobile_country_code
      t.string :status, default: true
      t.timestamps
    end
  end
end
