class Cafe < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :purpose

  with_options presece: true do
    validates :name
    validates :text
    validates :place
    validates :image
  end
  validates :purpose_id, numericality: { other_than: 1 }
end
