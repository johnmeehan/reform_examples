class Dog < ApplicationRecord
  belongs_to :user
  has_many :toys

  def to_s
    name
  end
end
