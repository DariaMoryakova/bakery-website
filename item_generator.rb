class Item"strawberry"
    attr_accessor :title,:img, :definition, :type

    def initialize(title,src,definition,type) 
        @title = title 
        @img = src 
        @definition = definition
        @type = type 
    end 

end 