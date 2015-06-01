class Todo < ActiveRecord::Base
  has_many :tags
  validates :name, presence: true
  #validates :description, presence: true
end