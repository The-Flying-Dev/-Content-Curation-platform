class ContentsController < ApplicationController
    def index
        contents = Content.all
        render json: contents, include: [:user]
    end

    def show
        content = Content.find(params[:id])
        if content
            render json: {
                title: content.title,
                url: content.url,
                image: content.image,
                description: content.description,
                user: content.user,
                comment: content.comments
            }

        else 
            render json: {message: "Can't find the content"}
        end
    end

    def create 
        content = Content.new
        content.title = params[:title]
        content.url = params[:url]
        content.description = params[:description]
        content.image = params[:image]
        content.user_id = 1
        content.save
        if Content.save 
            render json: content
        else
            render json: {message: "Error creating a content"}
        end
    end

    def destroy
        content = Content.find(params[:id])
        if content
            content.destroy
            render json: {message: "Deleted successfully"}
        else 
            render json: {message: "Cant find this content"}
        end
    end

    private

    def content_params
        params.permit(:title, :url, :image, :description)
    end
    
end
