class UsersController < ApplicationController
  def login_form
  end

  def show
    # TODO: ログイン機能実装後にcurrent_user.idに変更
    user_id = 1
    @user = User.find(user_id)
    @posts = @user.posts.order(created_at: :desc)
  end
end
