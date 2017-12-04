#
# Usersテーブルに、Twitter認証用のカラムを追加する
#
class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :nickname, :string
    add_column :users, :image_url, :string
  end
end
