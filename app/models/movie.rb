class Movie < ApplicationRecord

  with_options presence: true do
    validates :name
    validates :explanation
    validates :image
    validates :video
  end

  with_options numericality: { other_than: 0 } do
    validates :category_id
    validates :time_required_id
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  # has_many :comments
  has_one_attached :image
  has_one_attached :video
  belongs_to :user
  belongs_to_active_hash :category
  belongs_to_active_hash :time_required
end
