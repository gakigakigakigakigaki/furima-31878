class Category < ActiveHash::Base
  self.data = [
    { id: 0, name: '_ _'},
    { id: 1, name: 'レディース'},
    { id: 2, name: 'メンズ'},
    { id: 3, name: 'ベビー·キッズ'},
    { id: 4, name: 'インテリア·住まい·小物'},
    { id: 5, name: '本·音楽·ゲーム'},
    { id: 6, name: 'おもちゃ·ホビー·グッズ'},
    { id: 7: name: 'コスメ·美容·香水'},
    { id: 8, name: '家電·スマホ·カメラ'},
    { id: 9, name: 'その他'}
  ]


  include ActiveHash::Associations
  has_many :items

end


