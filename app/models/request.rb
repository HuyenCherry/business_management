class Request < ApplicationRecord
  belongs_to :user

  validates :name, :create_at, :type, presence: true
end
