class Api::PetsController < Api::ApplicationController

  #
  # ユーザ一覧を取得
  #
  def index
    render json: Pet.all, each_serializer: PetOverviewSerializer
  end

  #
  # ユーザ詳細を取得
  #
  def show
    render json: Pet.find(params[:id]), serializer: PetDetailSerializer
  end

end
