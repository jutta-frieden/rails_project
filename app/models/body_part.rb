class BodyPart < ActiveRecord::Base
    has_many :exercises
    belongs_to :circuit

    def exercise_list
         exercises.map {|e| e.name}.join(', ')
    end

end
