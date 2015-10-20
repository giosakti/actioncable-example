class CommentsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "articles:#{params[:article_id].to_i}:comments"
  end
end
