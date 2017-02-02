class Questions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title, { null: false }
      t.text :body, { null: false }
      t.integer :views, { default: 0 }
      t.integer :user_id
      t.integer :best_answer_id

      t.timestamps(null: false)
    end
  end
end
