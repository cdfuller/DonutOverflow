class Votes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :value, { null: false }
      t.integer :user_id
      t.integer :voteable_id
      t.string :voteable_type

      t.timestamps(null: false)
    end
  end
end
