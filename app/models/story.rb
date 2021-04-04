class Story < ApplicationRecord
    belongs_to :user
    
    def self.user(id)
        Story.where(user_id: id)
    end
end
