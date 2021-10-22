class ContentsController < ApplicationController
    def index
        contents = content.all
        render json: contents, include: [:user]
    end

    def show
        
    end
end
