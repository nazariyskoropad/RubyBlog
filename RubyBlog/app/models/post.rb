class Post < ApplicationRecord
    
    belongs_to :user
    belongs_to :category

    scope :with_categories, -> {includes(:category)}
 
end
