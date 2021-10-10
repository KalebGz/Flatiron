# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class
class User 
    attr_accessor :name
    @@all = [] 
    def initialize(name)
        @name = name 
        @@all << self
    end 

    def photos
        Photo.all.select { |photo| photo.user == self}
    end
end 

class Photo
    attr_accessor :user 
    @@all = []
    def initialize()
        @@all << self
    end 
    def comments 
        Comment.all.select { |comment| comment.photo == self}
    end 
    def make_comment(comment)
        com = Comment.new(comment)
        com.photo = self 
    end


    def self.all
        @@all
    end
    
end 


class Comment
    attr_accessor :photo
    @@all = [] 
    def initialize(comment)
        @comment = comment 
        @@all << self 
    end 
    def self.all 
        @@all 
    end 
end 

sandwich_photo = Photo.new
sophie = User.new("Sophie")
sandwich_photo.user = sophie
puts sandwich_photo.user.name
# => "Sophie"
puts sophie.photos
# => [#<Photo:0x00007fae2880b370>]


puts sandwich_photo.comments
# => []

sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
puts sandwich_photo.comments
# => [#<Comment:0x00007fae28043700>]

putsComment.all
#=> [#<Comment:0x00007fae28043700>]


