$ ->
  if $(".stream").length > 0
    $(".stream").scrollTop($(".stream")[0].scrollHeight + 1);

  id = $("[data-channel='question_comments']").data("question-id")
  App.question_comment = App.cable.subscriptions.create {channel: "QuestionCommentChannel", question_id: id},
    connected: ->
      # Called when the subscription is ready for use on the server

    disconnected: ->
      # Called when the subscription has been terminated by the server

    received: (data) ->
      $("[data-channel='question_comments'] .stream").append("#{data.username}: #{data.body}<br />")
      $(".stream").scrollTop($(".stream")[0].scrollHeight + 1);

$(document).on 'keypress', '[data-channel=\'question_comments\'] .new_question_comment', (event) ->
  if event.keyCode is 13 # return/enter = send
    $.ajax
      type: 'POST'
      url: "/question_comments"
      data:
        question_id: $("[data-channel='question_comments']").data("question-id")
        question_comment:
          body: event.target.value
      dataType: 'json'
      success: (response) ->
        event.target.value = ''
        event.preventDefault()
