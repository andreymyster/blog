class CommentsController < ApplicationController

  before_filter :authenticate_user!, :only => [:create]

  def create
    @article = Article.find(params[:article_id])
    # @article.comments.create(comment_params)

    # art = Article.new
    @article.comments.author = current_user.username
    @article.comments.body = params.require(:comment).permit(:body)
    @article.save

    redirect_to article_path(@article)
  end

  # private

  # def comment_params
  #   params.require(:comment).permit(:body)
  # end
end
