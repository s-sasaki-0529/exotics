class SessionsController < ApplicationController

  #
  # get /auth/:provider/callback
  # Twitter認証データを元に、Userを作成/取得する
  #
  def create
    User.find_or_create_from_auth_hash(request.env['omniauth.auth'])
    redirect_to '/'
  end
end
