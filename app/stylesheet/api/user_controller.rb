class Api::UserController < Api::ApplicationController

  #
  # ユーザ一覧を取得
  #
  def index
    render json: User.all, each_serializer: UserOverviewSerializer
  end

  #
  # ユーザ詳細を取得
  #
  def show
    render json: User.find(params[:id]), serializer: UserDetailSerializer
  end

end
