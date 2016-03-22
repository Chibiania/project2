class Book < ActiveRecord::Base
  has_many :adaptations, dependent: :destroy
  belongs_to :user
end
