class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.text :description
      t.string :body_part
      t.integer :repetitions

      t.timestamps
    end
  end
end
