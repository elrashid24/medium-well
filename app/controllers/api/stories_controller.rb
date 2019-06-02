class Api::StoriesController < ApplicationController
    
    before_action :signed_in?, only: [:create, :update, :destroy]

    def index 
        @stories = Story.all
        render 'api/stories/index'
    end

    def create
        @story = Story.new(story_params)
        @story.author_id = current_user.id
        @story.publish_date = Date.new
        
        if @story.save
            render 'api/stories/show'
        else 
             render json: @user.errors.full_messages, status: 422
        end
    end

    def show
        # debugger
        @story = Story.find_by(id: params[:id])
        # debugger
        render 'api/stories/show'
    end

    def update
        @story = Story.find_by(id: params[:id])

        if @Story.update_attributes(story_params)
            render 'api/stories/show'
        else 
            render json: @user.errors.full_messages, status: 422
        end
    end

    def destroy 
        @story = Story.find_by(id: params[:id])
        @story.destroy 
        render 'api/stories/index'
    end


    private 
    def story_params
        params.require(:story).permit(:title, :body, :publish_date)
    end
end
