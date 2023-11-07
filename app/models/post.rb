class Post < ApplicationRecord
  belongs_to :user

  # 空でないことを確認する,最大200文字であることを確認する
  validates :content, presence: true, length: { maximum: 200 }
end
