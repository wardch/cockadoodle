class CreateGreetings < ActiveRecord::Migration
  def change
    create_table :greetings do |t|
      t.string :phonenumber
      t.text :body
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
