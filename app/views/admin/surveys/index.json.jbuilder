json.array!(@surveys) do |survey|
  json.extract! survey, :id, :title, :description, :status, :content_id
  json.url survey_url(survey, format: :json)
end
