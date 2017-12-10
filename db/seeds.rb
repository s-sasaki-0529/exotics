# sample Users
user1 = User.create(
  provider: 'twitter',
  uid: '341992852',
  nickname: 'Sa2Knight',
  image_url: 'http://pbs.twimg.com/profile_images/709702386550308864/0bKYD-gI_normal.jpg',
  introduction: 'デグー16匹飼ってます！デグー飼いの皆様！是非仲良くしてください！'
)
user2 = User.create(
  provider: 'twitter',
  uid: 'hogehogehogehoge1',
  nickname: 'HousouP',
  image_url: 'https://pbs.twimg.com/profile_images/771362397030191104/rFMJRLF2_400x400.jpg',
  introduction: '小動物が大好きで、毎日かわいがってます'
)
user3 = User.create(
  provider: 'twitter',
  uid: 'hgoehogehogehoge2',
  nickname: 'HoshiumeAmai',
  image_url: 'https://pbs.twimg.com/profile_images/3580186613/9c42c1c8d3792eb3179b636c9728de27_400x400.jpeg',
  introduction: 'デグー8匹と、チンチラ2匹を飼ってます。毎日楽しく生活しています。'
)

# sample kind
degu = Kind.create(name: 'デグー')

# sample pets
Pet.create([
  {
    user: user1, kind: degu, name: 'パズー', gender: 'male', birthday: '2015/12/01',
    description: '我が家最初のデグー',
    image_url: 'https://pbs.twimg.com/media/Ct0F1uZUsAEvqAm.jpg',
  },
  {
    user: user1, kind: degu, name: 'メイ', gender: 'female', birthday: '2016/02/01',
    description: '二度の出産経験者',
    image_url: 'https://pbs.twimg.com/media/CuzjROnUMAAVrBn.jpg',
  },
  {
    user: user1, kind: degu, name: 'ジジ', gender: 'male', birthday: '2016/09/01',
    description: 'グルメで好き嫌い多め',
    image_url: 'https://pbs.twimg.com/media/DFFzOumU0AAi-Ew.jpg',
  },
  {
    user: user2, kind: degu, name: 'セン', gender: 'female', birthday: '2017/06/01',
    description: 'チヒロと双子っぽいけど小柄な方',
    image_url: 'https://pbs.twimg.com/media/DEXSFe1UIAQ03Xa.jpg',
  },
  {
    user: user2, kind: degu, name: 'チヒロ', gender: 'female', birthday: '2017/06/01',
    description: 'センと双子っぽいけど大柄な方',
    image_url: 'https://pbs.twimg.com/media/DBtqxweV0AAAjHN.jpg',
  },
  {
    user: user2, kind: degu, name: 'ハク', gender: 'male', birthday: '2017/06/01',
    description: 'イケメン',
    image_url: 'https://pbs.twimg.com/media/DGDQbJ6UIAEEIX5.jpg',
  },
  {
    user: user3, kind: degu, name: 'バロン', gender: 'male', birthday: '2017/08/07',
    description: '模様が一番カッコいい若手',
    image_url: 'https://pbs.twimg.com/media/DIPSaNcVAAoeaZX.jpg:large',
  },
])
