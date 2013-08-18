json.array!(@exercises) do |exercise|
  json.extract! exercise, :name, :description, :body_part, :repetitions
  json.url exercise_url(exercise, format: :json)
end
