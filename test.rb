#class Exp
#    class << self; attr_accessor :inst end
    #attr_accessor :inst
#    @inst = 15
#end
class Test
    attr_reader :name
    
   def initialize
       @name = 'jay'
        p @name 
   end
       
end

#puts Exp.inst
x = Test.new
x.name 
