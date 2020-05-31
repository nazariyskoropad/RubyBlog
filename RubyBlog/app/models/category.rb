class Category < ApplicationRecord
    
    has_many :posts

    def self.find_by_handle(handle)
        find_by(handle: handle) 
      end
    
      def self.find_by_handle!(handle)
        find_by_handle(handle) || 
          raise(ActiveRecord::RecordNotFound)
      end
      
      def self.find_by(id)
        find_by(id: id)
      end
end
