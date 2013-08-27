 class Exercise < ActiveRecord::Base
   has_many :circuit_exercises
   has_many :circuits, :through => :circuit_exercises

   belongs_to :body_part
   belongs_to :circuit
end 
