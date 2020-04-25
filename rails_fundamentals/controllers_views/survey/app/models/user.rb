class User < ActiveRecord::Base
    validates :name, :dojo, :lang, presence: true, length: {in: 2..20}
end
