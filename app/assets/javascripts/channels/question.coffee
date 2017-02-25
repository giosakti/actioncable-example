App.question = App.cable.subscriptions.create "QuestionChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $("#answer_#{data['answer_id']}_votes_count").html("#{data['votes_count']}")
