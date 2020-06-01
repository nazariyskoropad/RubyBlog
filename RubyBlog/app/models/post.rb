class Post < ApplicationRecord
    
    belongs_to :user
    belongs_to :category

    scope :with_categories, -> {includes(:category)}
    scope :ordered, -> {order(id: :desc)}    

    def self.find_by_category_id(category_id)
        where(category_id: category_id)
    end
end
