class Robot
    ## THIS GIVES name METHOD so no NEED TO INITIALIZE name METHOD ##
    attr_reader :name
    
    def initialize
        @name = random_name
    end
    
    #p @name
    #def name
     #  random_name          
    #end
    
    #def reset
     #   if @name.empty?
       #     puts 'No name for Robot.'
     #   else
            #@name = nil
      #      @name = random_name
      #  end    
   # end
   
   ## REFACTORING OF ABOVE CODE ###
   def reset
        unless @name.empty?
            @name = random_name
        end 
   end
    
    private
        def random_name
            str = (1..2).map{('A'..'Z').to_a[rand(26)]}.join
            #str = [*('A'..'Z')].shuffle[0,2].join
            #str = ('A'..'Z').to_a.sample(2)
            dig = (1..3).map{('0'..'9').to_a[rand(9)]}.join
            generated = str + dig
            p generated
        end
end


