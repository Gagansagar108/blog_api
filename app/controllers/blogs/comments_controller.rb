module Blogs 
    class CommentsController < ApplicationController
        def health_check
            return render json: { health: "good"}, status: 200
        end 
        
        def create
            Comment.new()
        end 


        private 

        def validate_create_params
            params.permit(:)
        end 
    end 
end 
