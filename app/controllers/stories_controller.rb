class StoriesController < 
    def create
        @story = Story.new(story_params)
            if @Story.save 
                
            end
    end
end
