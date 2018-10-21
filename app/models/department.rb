class Department < ApplicationRecord
  has_many :user_departments
  has_many :users, through: :user_departments

  validates :name, :address, :phone, presence: true
end
