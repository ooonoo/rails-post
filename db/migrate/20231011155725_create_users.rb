class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false, comment:"ユーザー名"
      t.string :email, null: false, comment:"メールアドレス"
      t.string :password, null: false, comment:"パスワード"

      t.timestamps
    end
  end
end
