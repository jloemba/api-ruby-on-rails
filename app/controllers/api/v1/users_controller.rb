class Api::V1::UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :set_user, only: [:show, :update, :destroy]
  
  
     # GET /user
    def index
      @users = Users.all
      render json: @users
    end
  
  
     # GET /user/1
    def show
      render json: @user
    end
  
     # POST /user
    def create
      @users = Users.new(user_params)
      if @users.save
        render json: @users, status: :created, location:        api_v1_user_url(@users)
      else
        render json: @users.errors, status: :unprocessable_entity
      end
    end
  
     # PATCH/PUT /@user/1
    def update
      if @user.update(user_params)
        render json: @user
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end
  
     # DELETE /@user/1
    def destroy
      @user.destroy
    end
  
     # POST /user/authenticate
    def authenticate
      @user = Users.find_by_email(params[:email])
      if @user.password == params[:password]
        #token = JsonWebToken.encode(user_id: @user.id)
        #time = Time.now + 24.hours.to_i 
        render json: @user , status: :ok
      else
        render json: { error: 'unauthorized' }, status: :unauthorized
      end
    end

    # POST /user/register
    def register
      if user_params[:email] != nil && user_params[:name] != nil && user_params[:password] != nil
        render json: { error: 'all value are not filled' }, status: :unprocessable_entity
        #Si tous les paramètres sont saisis , on peut soumettre la données
        user_params[:token] = nil
        @users = Users.new(user_params)
        if @users.save
          render json: @users, status: :created, location:        api_v1_user_url(@users)
        else
          render json: @users.errors, status: :unprocessable_entity
        end
      else
        render json: { error: 'all value are not filled' }, status: :unprocessable_entity
      end

    end

     private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = Users.find(params[:id])
    end
    # Only allow a trusted parameter “white list” through.
    def user_params
      params.require(:user).permit(:name, :email , :password)
    end
  
    

   end