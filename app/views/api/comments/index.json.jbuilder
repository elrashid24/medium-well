@comments.each do |comment|
    json.set! comment.id do 
        json.extract!comment, :id, :author_id, :story_id, :body, :publish_date
    end
end