class CreateTables < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.references :user, foreign_key: true
      t.timestamps
    end

    create_table :comments do |t|
      t.string :title
      t.string :body
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true
      t.timestamps
    end

  end
end
