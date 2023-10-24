# 一括で10個のユーザーデータを作成
# 10回繰り返し処理を行う
10.times do |n|
  user = User.create!(
    # n + 1で数字が重複しないようにする
    email: "test#{n + 1}@test.com",
    name: "テストユーザー#{n + 1}",
    password: 'testhoge'
  )

  10.times do |m|
    Post.create!(
      content: "contenthoge#{n * 10 + m + 1}",
      user_id: user.id
    )
  end
end