class Api::UserController < Api::ApplicationController

  #
  # ユーザ一覧を取得
  #
  def index
    render json: User.all, each_serializer: UserSerializer
  end

end
