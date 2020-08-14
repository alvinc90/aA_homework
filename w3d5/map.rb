class Map 

    attr_reader :ivar

    def initialize 
        @ivar = [] 
    end

    def set(key, value)  
        self.ivar.each_with_index do |subarr, i| 
            if subarr.include?(key) 
                self.ivar[i] = [key, value] 
            else
                self.ivar << [key,value] 
            end
        end
        self.ivar 
    end

    def get(key) 
        return subarr if self.ivar.any? {|subarr| subarr.include?(key) }
    end

    def delete(key)     
        self.ivar.delete_if {|pair| pair.include?(key)} 
    end

    def show
        puts self.ivar 
    end
end