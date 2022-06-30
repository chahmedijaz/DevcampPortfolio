class Portfolio < ApplicationRecord

    validates_presence_of(:title, :image)

    def self.angular #class method
        Portfolio.where(title: 'angular')
    end
end
