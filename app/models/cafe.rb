class Cafe < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presece: true do
    validates :name
    validates :text
    validates :place
    validates :image
  end
end
