class Calendar < ApplicationRecord
  belongs_to :user

  validates :checkin, :checkout, presence: true
end
