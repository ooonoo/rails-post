class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, comment:"ユーザー名"
      t.string :email, comment:"メールアドレス"
      t.string :password, comment:"パスワード"

      t.timestamps
    end
  end
end
