json.array!(@tech_talks) do |tech_talk|
  json.extract! tech_talk, :id, :title, :description, :length, :like, :views
  json.url tech_talk_url(tech_talk, format: :json)
end
