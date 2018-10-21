class UserDepartment < ApplicationRecord
  belongs_to :department
  belongs_to :user

  validates :start_date, presence: true
end
