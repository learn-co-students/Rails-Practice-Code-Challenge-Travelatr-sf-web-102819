class Destination < ApplicationRecord
has_many :bloggers 
has_many :posts, through: :bloggers
end
