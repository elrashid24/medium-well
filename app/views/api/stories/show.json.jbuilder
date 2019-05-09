json.extract! @story, :id, :author_id, :title, :body, :publish_date
json.first_name @story.user.first_name
json.last_name @story.user.last_name