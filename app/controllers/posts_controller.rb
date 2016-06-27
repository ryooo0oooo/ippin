class PostsController < ApplicationController
  def index
    @posts = Post.all.order("id DESC")   # 投稿内容を表示したい
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(create_parmas)
    redirect_to action: :index
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

private
def create_params
  params.require(:post).permit(:image, :descripition).merge(user_id: current_user.id)
end

end
