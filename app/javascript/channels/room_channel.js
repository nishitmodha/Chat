import consumer from "./consumer"

consumer.subscriptions.create("RoomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    $('#chat-list').append("<div class='chat-box'><div class='chat-message'>" + data.content + "</div><div class='chat-user-name'>" + data.user_name + "</div></div>");
    $('#content').val('');
    // Called when there's incoming data on the websocket for this channel
  }
});
