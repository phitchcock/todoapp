class Todo < ActiveRecord::Base
  belongs_to :user
  has_many :todo_tags
  has_many :tags, through: :todo_tags
  validates :name, presence: true
  #validates :description, presence: true
end