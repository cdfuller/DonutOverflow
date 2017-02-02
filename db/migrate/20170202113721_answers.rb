class Answers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :body, { null: false }
      t.integer :question_id
      t.integer :user_id

      t.timestamps(null: false)
    end
  end
end
