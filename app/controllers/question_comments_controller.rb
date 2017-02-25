class QuestionCommentsController < ApplicationController
  def create
    @question_comment = QuestionComment.new(question_comment_params.merge(
      question_id: params[:question_id],
      username: session[:username]
    ))

    if @question_comment.save
      ActionCable.server.broadcast "questions:#{@question_comment.question_id}:question_comments", username: @question_comment.username, body: @question_comment.body
    end
  end

  private
    def question_comment_params
      params.require(:question_comment).permit(:body)
    end
end
