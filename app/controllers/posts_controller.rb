class PostsController < ApplicationController
  def index
    @posts = Post.all    # 投稿内容を表示したい
  end

  def new
    @post=Post.new
  end
end
