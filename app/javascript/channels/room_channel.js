import consumer from "./consumer"

consumer.subscriptions.create("RoomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    $('#chat-list').append("<tr><td>" + data.content + "</td><td>" + data.user_name + "</td></tr>");
    $('#content').val('');
    // Called when there's incoming data on the websocket for this channel
  }
});
