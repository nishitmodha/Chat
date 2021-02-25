class UsersController < ApplicationController

  # GET /users or /users.json
  def index
  end

  # GET /users/1 or /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        #format.html { redirect_to messages_path, notice: "User was successfully created." }
        format.html { redirect_to user_messages_path(@user), notice: "User was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
  end

  # DELETE /users/1 or /users/1.json
  def destroy
  end

  private
    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name)
    end
end
