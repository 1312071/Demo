class Post < ApplicationRecord
		#validation:
	validates :title, :content, :presence => true
	validates :title, :length => {:minimum => 2}
	validates :title, :uniqueness => {:message => "already taken"}
<<<<<<< HEAD
end
=======
end
>>>>>>> login
