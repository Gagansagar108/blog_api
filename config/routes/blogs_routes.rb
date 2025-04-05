scope path: "/v1" do
namespace :blogs do 
        resources :blogs, only: [] do
            collection do 
               get :health_check
            end 
        end 
      end
end 
#v1/blogs/posts/health_checkv