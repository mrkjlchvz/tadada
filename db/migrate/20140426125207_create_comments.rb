class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :discussion_id
      t.integer :user_id

      t.timestamps
    end
    add_index :comments, :discussion_id
    add_index :comments, :user_id
  end
end
