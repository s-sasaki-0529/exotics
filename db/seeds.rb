# sample Users
user = User.create(
  provider: 'twitter',
  uid: '341992852',
  nickname: 'Sa2Knight',
  image_url: 'http://pbs.twimg.com/profile_images/709702386550308864/0bKYD-gI_normal.jpg'
)

# sample kind
degu = Kind.create(name: 'デグー')

# sample pets
Pet.create([
  {
    user: user, kind: degu, name: 'パズー', gender: 'male', birthday: '2015/12/01',
    description: '我が家最初のデグー',
    image_url: 'https://pbs.twimg.com/media/Ct0F1uZUsAEvqAm.jpg',
  },
  {
    user: user, kind: degu, name: 'メイ', gender: 'female', birthday: '2016/02/01',
    description: '二度の出産経験者',
    image_url: 'https://pbs.twimg.com/media/CuzjROnUMAAVrBn.jpg',
  },
  {
    user: user, kind: degu, name: 'ジジ', gender: 'male', birthday: '2016/09/01',
    description: 'グルメで好き嫌い多め',
    image_url: 'https://pbs.twimg.com/media/DFFzOumU0AAi-Ew.jpg',
  },
])
