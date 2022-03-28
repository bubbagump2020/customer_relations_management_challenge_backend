class Client < ApplicationRecord
  validates :first_name, :last_name, :email, :stage, :probability, presence: true
  validates :probability, numericality: { only_integer: true }
end
