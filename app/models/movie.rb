class Movie < ApplicationRecord

  with_options presence: true do
    validates :name
    validates :explanation
  end

  with_options numericality: { other_than: 0 } do
    validates :category_id
    validates :time_required_id
  end

  belongs_to :user
  # has_many :comments
  has_one_attached :image
  validates :image, presence: true
  belongs_to :category
  belongs_to :time_required
  
end
