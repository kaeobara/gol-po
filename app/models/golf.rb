class Golf < ApplicationRecord
  belongs_to :users, optional: true
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :drive
  belongs_to_active_hash :meeting_time
  has_one_attached :image
  # has_one :purchase, dependent: :destroy

  with_options presence: true do
    validates :image
    validates :title, length: { maximum: 40 }
    validates :introduction
    validates :play_date
    validates :meeting_time_id
    validates :prefecture_id
    validates :course_name
    validates :drive_id
    validates :price, numericality: { only_integer: true, greater_than: 299, less_than: 10000000 }
    validates :score
  end
end

