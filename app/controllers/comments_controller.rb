class CommentsController < ApplicationController
  def create
    @issue = Issue.find(params[:issue_id])
    @comment = Comment.new(comment_params)
    @comment.issue = @issue
    @comment.save
    #   redirect_to issue_path(@issue)
    # else
    #   render 'issues/show'
    # end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
