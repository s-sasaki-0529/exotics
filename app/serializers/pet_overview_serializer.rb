class PetOverviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :kind_id, :name,
             :gender, :birthday, :description, :image_url,
             :weight, :age

  def gender
    {
      'male'    => 'オス',
      'female'  => 'メス',
      'unknown' => '不明'
    }[object.gender]
  end

  # ToDo 現在の体重を動的に取得
  def weight
    0
  end

  # ToDo 現在の年齢を動的に取得
  def age
    "0歳"
  end

end
