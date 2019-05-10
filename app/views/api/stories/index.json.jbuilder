@stories.each do |story|
    json.set! story.id do 
        json.extract! story, :id, :author_id, :title, :body, :publish_date
        json.photoUrl url_for(story.photo) if story.photo.attached?
    end
end