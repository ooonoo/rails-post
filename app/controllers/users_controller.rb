class UsersController < ApplicationController
  def login_form
  end

  def show
     # 特定のユーザーのIDを指定
     user_id = 1

    # 特定のユーザーの投稿のみを取得
     @posts = Post.where(user_id: user_id).order(created_at: :desc)
  end
end
