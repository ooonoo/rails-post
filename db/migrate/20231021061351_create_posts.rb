class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.text :content, null: false, comment:"投稿内容"
      t.integer :user_id, null: false, comment:"ユーザーID"

      t.timestamps
    end
  end
end
