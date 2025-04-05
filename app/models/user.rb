class User < ApplicationRecord
     has_many :posts 
     has_many :comments

     after_save :after_save_handling
    
     before_save :before_save_handling

     after_commit :after_commit_handling

     after_create :after_create_handling

     def after_save_handling
          raise ActiveRecord::RecordInvalid.new("after_save")
     end 

     def before_save_handling
          raise ActiveRecord::RecordInvalid.new("before_save_handling")
     end 

     def after_commit_handling
          raise ActiveRecord::RecordInvalid.new("after_commit_handling")
     end 

     def after_create_handling 
          raise ActiveRecord::RecordInvalid.new("after_create_handling")
     end 
end 