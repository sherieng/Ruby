class User < ActiveRecord::Base
    validates :name, presence: true, length: {in: 2..20}
end
