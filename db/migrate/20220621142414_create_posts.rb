class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :content
      t.integer :like
      t.timestamps
      t.integer :phase_id
    end
  end
end
