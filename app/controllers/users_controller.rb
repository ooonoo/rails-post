class UsersController < ApplicationController
  def login_form
  end

  def show
     # TODO ログイン機能実装後にcurrent_user.idに変更
     user_id = 1
     @user = User.find(user_id)
     @posts = Post.where(user_id: user_id).order(created_at: :desc)
  end
end
