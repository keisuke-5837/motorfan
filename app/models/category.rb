class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: 'category選択(必須)' },
    { id: 2, name: 'car' },
    { id: 3, name: 'bike' }
  ]

  include ActiveHash::Associations
  has_many :machines

end