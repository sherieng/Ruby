class User < ActiveRecord::Base
    validates :first_name, :last_name, :email, presence: true, length: {minimum: 2}
    validates :age, presence: true, numericality: {only_integer: true, greater_than: 10, less_than: 150}
end
