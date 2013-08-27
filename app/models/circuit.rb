class Circuit < ActiveRecord::Base
    has_many :circuit_exercises
    has_many :exercises, :through => :circuit_exercises

#this is to list all exercises which belong to a circuit
#e the grey part was my first version, the valid part is the much nicer improved code
def exercise_list
        #list=""
        #exercises.each do |e|
        #list += e.name
        #if e != exercises.last
        #    list += ", "
        #else
        #    list += "."
        #end
    #end
    #return list

    exercises.map {|e| e.name}.join(', ') + '.'
end

end