class Blog < ActiveRecord::Base
    validates :name, :description, presence:true
    has_many :posts, dependent: :destroy 
    has_many :owners, dependent: :destroy
    has_many :comments, as: :commentable, dependent: :destroy
end
