class User < ActiveRecord::Base
    has_many :posts, dependent: :destroy
    validates :first_name, :last_name, :fav_lang, presence: true, length: {in: 2..20}
end
