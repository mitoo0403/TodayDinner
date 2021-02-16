class TimeRequired < ActiveHash::Base
  self.data = [
    {id: 0, name: '-----'},{id: 1, name: '5分以内'}, {id: 2, name: '10分'}, {id: 3, name: '15分'},
    {id: 4, name: '30分'}, {id: 5, name: '45分'}, {id: 6, name: '1時間'},
    {id: 7, name: '1時間以上'}
  ]
  include ActiveHash::Associations
  has_many :movies

end
