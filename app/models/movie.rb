class Movie < ApplicationRecord
  belongs_to :category
  belongs_to :time_required
end
