class QuestionChannel < ApplicationCable::Channel
  def subscribed
    stream_from "question_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
