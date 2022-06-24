class Post <ActiveRecord::Base
    belongs_to :phase 
    has_many :comments, dependent: :destroy

end