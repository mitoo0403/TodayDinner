class Category < ActiveHash::Base
  self.data = [
    {id: 0, name: '-----'},{id: 1, name: '和食'}, {id: 2, name: '洋食'}, {id: 3, name: 'デザート'},
    {id: 4, name: '一品'}, {id: 5, name: 'おつまみ'}, {id: 6, name: 'スープ'},
    {id: 7, name: 'その他'}
  ]
  include ActiveHash::Associations
  has_many :movies
end
