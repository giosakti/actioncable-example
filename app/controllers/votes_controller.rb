class VotesController < ApplicationController
  before_action :set_vote, only: [:show, :edit, :update, :destroy]

  # POST /votes
  def create
    @answer = Answer.find(params[:answer_id])
    @vote = Vote.new(answer_id: @answer.id, username: session[:username])

    if @vote.save
      ActionCable.server.broadcast "question_channel", answer_id: @vote.answer_id, votes_count: @vote.answer.votes.count
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vote
      @vote = Vote.find(params[:id])
    end
end
