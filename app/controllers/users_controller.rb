class UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
      render json: user, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    render json: find_user, status: find_user.kind_of?(User) ? :ok : :not_found
  end

  def update
    if find_user.update(user_params)
      render json: find_user.reload, status: :ok
    else
      render json: { errors: find_user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    find_user.destroy
    render status: :ok
  end

  private

  def find_user
    @find_user ||= User.find(user_params[:id])
    rescue ActiveRecord::RecordNotFound
      'User not found'.to_json
  end

  def user_params
    params.permit(:email, :password, :avatar, :id)
  end
end