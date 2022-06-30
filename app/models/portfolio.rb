class Portfolio < ApplicationRecord

    validates_presence_of(:title, :image)

    def self.angular #class method
        Portfolio.where(title: 'angular')
    end

    after_initialize :set_defaults # jb bhi portfolio ka koi object initialize hoga to set_defaults name wla method run hoga

    #after_initialize ek callback hai ya ye keh skte event listner hai jo object initializing k event ko monitor kr rha
    def set_defaults
        self.image ||= "https://via.placeholder.com/150x150" #self means k jo current object hai portolio ka uski image, this keyword bhi keh skte
    end
    

end
