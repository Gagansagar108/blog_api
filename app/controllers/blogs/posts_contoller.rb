module Blogs 
class PostsController < ApplicationController
    def health_check
        return render json: { health: "good"}, status: 200
    end 
end 
end 


