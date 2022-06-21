class Post <ActiveRecord::Base
    belongs_to :phase 
    has_many :comments

    # def num_likes
    #     self.likes.number_of_likes
    # end

end