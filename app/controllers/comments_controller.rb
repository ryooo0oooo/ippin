class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:id])
    @comment = Comment.new
  end
end
