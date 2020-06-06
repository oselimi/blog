class CommentsController < ApplicationController
  def create
    article = Article.find(params[:article_id])
    comment = article.comments.build(comment_params)

    if comment.save
      redirect_to article
    else
      render :show
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy

    redirect_to comment.article
  end

  private

  def comment_params
    params.require(:comments).permit(:commenter, :body)
  end
end
