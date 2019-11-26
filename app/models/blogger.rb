class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts

    validates :name, presence: true, uniqueness: true, length: { in: 2..60 }
    validates :bio, presence: true, length: { in: 1..10000 }
    validates :age, presence: true, numericality: { greater_than: 0 }


    def total_likes
        self.posts.map{|post| post.likes}.reduce(:+)
    end
end
