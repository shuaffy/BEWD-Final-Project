class Comment < ActiveRecord::Base
  
belongs_to :user
belongs_to :story

def user_email
	user.user_email
end

end