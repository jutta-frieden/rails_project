class Exercise < ActiveRecord::Base
   belongs_to :body_part

 def body_part_name
    if body_part.nil?
        ""
    else
        body_part.name
    end
 end
end