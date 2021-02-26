class MessagesController < ApplicationController

  # GET /messages or /messages.json
  def index
    @messages = Message.includes(:user).all
    @message = Message.new(message_params)
  end

  # GET /messages/1 or /messages/1.json
  def show
  end

  # GET /messages/new
  def new
    @message = Message.new
  end

  # GET /messages/1/edit
  def edit
  end

  # POST /messages or /messages.json
  def create
    @message = Message.new(message_params)

    if @message.save
      ActionCable.server.broadcast 'room_channel', content: @message.content, user_name: @message.user.name
      # head :ok
    end
  end

  # PATCH/PUT /messages/1 or /messages/1.json
  def update
  end

  # DELETE /messages/1 or /messages/1.json
  def destroy
  end

  private
    # Only allow a list of trusted parameters through.
    def message_params
      params.permit(:content, :user_id)
    end
end
