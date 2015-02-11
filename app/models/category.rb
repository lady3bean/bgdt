class Category < ActiveRecord::Base
  has_many :entries

  validates :cat, presence: true
end