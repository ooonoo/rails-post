class UsersController < ApplicationController
  def login_form
  end

  def show
     # TODO ログイン機能実装後にcurrent_user.idに変更
     user_id = 1

     @posts = Post.where(user_id: user_id).order(created_at: :desc)
  end
end
