class UserConfessesController < ApplicationController
  before_action :set_user_confess, only: [:show, :edit, :update, :destroy]

  # GET /user_confesses
  # GET /user_confesses.json
  def index
    @user_confesses = UserConfess.all
  end

  # GET /user_confesses/1
  # GET /user_confesses/1.json
  def show
  end

  # GET /user_confesses/new
  def new
    @user_confess = UserConfess.new
  end

  # GET /user_confesses/1/edit
  def edit
  end

  # POST /user_confesses
  # POST /user_confesses.json
  def create
    @user_confess = UserConfess.new(user_confess_params)

    respond_to do |format|
      if @user_confess.save
        format.html { redirect_to @user_confess, notice: 'User confess was successfully created.' }
        format.json { render :show, status: :created, location: @user_confess }
      else
        format.html { render :new }
        format.json { render json: @user_confess.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_confesses/1
  # PATCH/PUT /user_confesses/1.json
  def update
    respond_to do |format|
      if @user_confess.update(user_confess_params)
        format.html { redirect_to @user_confess, notice: 'User confess was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_confess }
      else
        format.html { render :edit }
        format.json { render json: @user_confess.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_confesses/1
  # DELETE /user_confesses/1.json
  def destroy
    @user_confess.destroy
    respond_to do |format|
      format.html { redirect_to user_confesses_url, notice: 'User confess was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_confess
      @user_confess = UserConfess.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_confess_params
      params.require(:user_confess).permit(:lover_name, :lover_sex, :cf_title, :cf_body)
    end
end
