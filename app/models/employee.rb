class Employee < ApplicationRecord
  belongs_to :position
  has_many :employment_histories, dependent: :destroy
end
