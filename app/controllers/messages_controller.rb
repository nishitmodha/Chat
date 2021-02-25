class MessagesController < ApplicationController

  # GET /messages or /messages.json
  def index
    @messages = Message.all
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

    respond_to do |format|
      if @message.save
        format.html { redirect_to user_messages_path, notice: "Message was successfully created." }
        format.json { render :show, status: :created, location: @message }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
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
