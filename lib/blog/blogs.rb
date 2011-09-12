module Blog
  module Blogs

    def self.included(base)
      base.extend ClassMethods
    end
    
    module ClassMethods
      
      def blogs
        has_many :blog_posts, :as => "blogger", :class_name => "Blog::Post"
      end
            
    end
    
  end
end