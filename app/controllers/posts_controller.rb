class PostsController < ApplicationController
  def index
    # Postモデルから全ての投稿情報を取得、created_atを降順でソートし@postに格納
    @posts = Post.all.order(created_at: :desc)
  end
end
