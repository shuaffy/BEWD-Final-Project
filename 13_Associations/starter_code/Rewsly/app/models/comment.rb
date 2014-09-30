class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :story

  def user_name
    user.email
  end
end