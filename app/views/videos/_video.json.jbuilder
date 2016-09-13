json.extract! video, :id, :title, :tag, :created_at, :updated_at
json.url video_url(video, format: :json)