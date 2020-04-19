class Post < ApplicationRecord
    validates :title, presence: true
    validates :image_url, presence: true
    validates :content, presence: true
    before_save  :erase_spoiler

    def erase_spoiler
        self.content = self.content.split.reduce([]) { |memo, value| 
            memo.push(value) if value != "spoiler"; memo
    }.join(" ")
    end

end
