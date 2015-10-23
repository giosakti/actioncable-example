$ ->
  id = $("[data-channel='comments']").data("article-id")
  App.comments = App.cable.subscriptions.create {channel: "CommentsChannel", article_id: id},
    connected: ->
      # Called once the subscription has been successfully completed

    received: (data) ->
      $("[data-channel='comments']").append("#{data.comment_body} - <b>#{data.user_email}</b><br />")
