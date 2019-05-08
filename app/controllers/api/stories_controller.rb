class Api::StoriesController < ApplicationController
    def index 
        @stories = Story.all
        render :index
    end

    def create
        @story = Story.new(story_params)
        @story.author_id = current_user.id 
        @story.publish_date = Date.new
        
        if @story.save
            render :show 
        else 
             render json: @user.errors.full_messages, status: 422
        end
    end

    def show
        @article = 
    end


    private 
    def story_params
        params.require(:story).permit(:title, :body, :publish_date)
    end
end
