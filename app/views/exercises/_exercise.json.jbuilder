json.extract! exercise, :id, :name, :image, :category_id, :body_part_id, :user_id, :created_at, :updated_at
json.url exercise_url(exercise, format: :json)
