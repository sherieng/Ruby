class Post < ActiveRecord::Base
  validates :title, presence: true, length: {minimum: 7}
  validates :content, presence: true
  belongs_to :blog
  has_many :messages, dependent: :destroy 
end
