class Post < ApplicationRecord
  # 空でないことを確認する
  validates :contents, presence: true
  # 空でないことを確認する,最大200文字であることを確認する
  validates :user_id, presence: true, length: { maximum: 200 }
end
