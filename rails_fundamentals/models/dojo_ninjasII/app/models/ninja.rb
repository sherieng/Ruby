class Ninja < ActiveRecord::Base
  belongs_to :dojo
  validates :first, :last, presence: true, length: {minimum: 2}
end
