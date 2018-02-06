  class Thing
   def initialize( aName, aDescription )
     @name = aName
     @description = aDescription
     puts("Thing.initialize: #{self.inspect}\n\n")
   end

   def aMethod( aNewName )
     @name = aNewName
     puts("Thing.aMethod: #{self.inspect}\n\n")
   end
  end

  class Thing2 < Thing
    def initialize( aName, aDescription )
      super
      @fulldescription = "This is #{@name}, which is #{@description}"
      puts("Thing2.initialize: #{self.inspect}\n\n")
   end

   def aMethod( aNewName, aNewDescription )
     super( aNewName )
     puts("Thing2.aMethod: #{self.inspect}\n\n")
   end
  end

  class Thing3 < Thing2
   def initialize( aName, aDescription, aValue )
     super( aName, aDescription )
     @value = aValue
     puts("Thing3.initialize: #{self.inspect}\n\n")
   end

   def aMethod( aNewName, aNewDescription, aNewValue )
     super( aNewName, aNewDescription )
     @value = aNewValue
     puts("Thing3.aMethod: #{self.inspect}\n\n")
   end
  end

  class Thing4 < Thing3
    def aMethod
      puts("Thing4.aMethod: #{self.inspect}\n\n")
    end
  end

  class Thing5 < Thing4
  end
