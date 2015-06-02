class Todo < ActiveRecord::Base
  has_many :todo_tags
  has_many :tags, through: :todo_tags
  validates :name, presence: true
  #validates :description, presence: true
end