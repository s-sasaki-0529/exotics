class User < ApplicationRecord

  #
  # Twitterユーザを取得、あるいは作成する
  # ニックネーム、アイコン画像は都度最新の状態に更新する
  # @param  [Hash] auth_hash ユーザ情報
  # @return [User] 既存、あるいは新規作成したユーザモデル
  #
  def self.find_or_create_from_auth_hash(auth_hash)
    provider = auth_hash[:provider]
    uid = auth_hash[:uid]
    nickname = auth_hash[:info][:nickname]
    image_url = auth_hash[:info][:image]

    User.find_or_create_by(provider: provider, uid: uid) do |user|
      user.nickname = nickname
      user.image_url = image_url
    end
  end

end
