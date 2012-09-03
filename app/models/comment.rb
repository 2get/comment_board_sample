class Comment < ActiveRecord::Base
  attr_accessible :name, :title, :body

  validates :name,  presence: true
  validates :title, presence: true
  validates :body,  presence: true

  default_scope order: 'comments.created_at DESC'
end
