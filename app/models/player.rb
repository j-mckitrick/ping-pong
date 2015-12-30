class Player < ActiveRecord::Base
  validates :name, presence: true
  validates :hand, inclusion: { in: %w(left right),
                                message: "%{value} is not a valid hand" }
  validates :grade, numericality: { greater_than_or_equal_to: 0,
                                    less_than_or_equal_to: 100,
                                    message: "%{value} must be in the range of 0 to 100" }
  validates :email, presence: true, email: true
end
