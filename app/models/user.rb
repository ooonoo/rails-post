class User < ApplicationRecord
  validates :name, presence: true
  # 空でないことを確認する
  validates :email, presence: true, uniqueness: true
  # 空でないことを確認する,重複していないことを確認する
  validates :password, presence: true, length: { minimum: 8 }
  # 空でないことを確認する,最低8文字であることを確認する
end
