
module Blogs
    class PostsController < ApplicationController
        def health_check
            return render json: { health: "good"}, status: 200
        end 

        def create
            post = Post.new(permit_params)
            binding.pry
            unless post.save 
                return render json: { message: 'something went wrong'}, status: 422
            end 

            render json: { message: "good"}, status: 200
        end 


        def permit_params 
            params.permit(:title, :body, :user_id)
        end 
    end 
end 


