class Message < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  validates :author, presence: true
  validates :message, presence: true, length: {minimum: 15} 
  has_many :comments, as: :commentable, dependent: :destroy 

end
