class UsersController < ApplicationController

    def index
        @users = User.all

        render json: @users, status: 200
    end

    def create
        @user = User.new(user_params)

        if @user.save
            render json: "User saved!", status: 200
        else
            render json: @user.errors.full_messages, status: 418
        end
    end

    def show
        @user = User.find_by(id: params[:id])

        if @user
            render json: @user, status: 200
        else
            render json: "Error not found", status: 404
        end
    end

    def update
        @user = User.update(params[:id], user_params)
        if @user
            render json: @user, status: 200
        else
            render json: "Error not found", status: 404
        end
    end

    def destroy
        @user = User.delete(params[:id])

        if @user
            render plain: "USER WAS ERADICATED!", status: 200
        else
            render json: "Error no user by that id", status: 404
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :email)
    end
end
