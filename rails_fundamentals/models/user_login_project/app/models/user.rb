class User < ActiveRecord::Base
    validates :first_name, :last_name, presence: true, length: {in: 2..20}
    validates :age, presence: true, numericality: {only_integer: true, greater_than: 10, less_than: 150}
end
