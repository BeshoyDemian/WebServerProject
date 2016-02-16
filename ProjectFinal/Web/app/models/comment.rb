class Comment < ActiveRecord::Base
	belongs_to :user

  scope :visible , lambda { where(:visible => true)  }
  scope :invisible , lambda { where(:visible => false)  }
  scope :sorted , lambda { order("comments.id ASC") }
  scope :newest_first , lambda { order("comments.created_at DESC")}
  scope :search , lambda { |query| where(["commenttext LIKE ?","%#{query}%"])}
end
