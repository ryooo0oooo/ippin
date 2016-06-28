class PostsController < ApplicationController
  def index
    @posts = Post.all.order("id DESC")   # 投稿内容を表示したい
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(create_params)
    if @post.save
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def destroy
    post =Post.find(params[:id])
    if post.user_id == current_user.id
      post.destroy
    end
  end
  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    if post.user_id == current_user.id
      post.update(post_params)
    end
  end
  private
    def create_params
      params.require(:post).permit(:image, :description).merge(user_id: current_user.id)
    end
end
