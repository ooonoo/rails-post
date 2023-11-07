# 一括で10個のユーザーデータを作成
# 10回繰り返し処理を行う
10.times do |index|
  User.create!(
    # index + 1で数字が重複しないようにする
    email: "test#{index + 1}@test.com",
    name: "テストユーザー#{index + 1}",
    password: 'testhoge'
  )
end

# 全てのユーザーを取得し、それぞれに投稿を10個ずつ作成
  users = User.all
  users.each do |user|
    10.times do |index|
      user.posts.create!(
        content: "contenthoge#{index + 1}"
      )
    end
  end