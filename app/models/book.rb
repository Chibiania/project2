class Book < ActiveRecord::Base
  has_many :adaptations, dependent: :destroy
end
