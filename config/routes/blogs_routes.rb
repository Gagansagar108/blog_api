scope path: "/v1" do
    namespace :blogs do 
            resources :posts, only: [:index, :show, :create, :update] do
                collection do 
                    get :health_check
                end 
            end 

            resources :comments do
            end 

        end
end 

#v1/blogs/posts/health_checkv