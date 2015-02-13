class Post < ActiveRecord::Base
  def to_param
    "here/2014/1"
  end
end
