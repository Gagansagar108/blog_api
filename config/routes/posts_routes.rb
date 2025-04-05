scope path: "/v1" do
    namespace :posts do 
            resources :posts, only: [] do
                collection do 
                    get :health_check
                end 
            end 
        end
end 

#v1/blogs/posts/health_checkv