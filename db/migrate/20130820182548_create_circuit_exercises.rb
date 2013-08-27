class CreateCircuitExercises < ActiveRecord::Migration
  def change
    create_table :circuit_exercises do |t|
      t.integer :circuit_id
      t.integer :exercise_id
      t.integer :repetitions

      t.timestamps
    end
  end
end
