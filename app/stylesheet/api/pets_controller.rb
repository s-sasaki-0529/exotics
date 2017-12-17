class Api::PetsController < Api::ApplicationController

  before_action do
    @user = User.find(params[:user_id])
  end

  #
  # ユーザ一覧を取得
  #
  def index
    render json: @user.pets, each_serializer: PetOverviewSerializer
  end

  #
  # ユーザ詳細を取得
  #
  def show
    render json: @user.pets.find(params[:id]), serializer: PetDetailSerializer
  end

end
