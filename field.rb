class Field

attr_accessor :type, :size

 @@farm = []

   CORN = 20
   WHEAT = 30

 def initialize(field_type, field_size)
     @type = field_type
     @size = field_size

 end

   def self.create(field_type, field_size)
     field = Field.new(field_type, field_size)
     @@farm << field
   end

   def self.harvest

     @@farm.each do |arg|
       num = 0
       sum = 0
       if arg.type == 'corn'
         num = arg.size * CORN
         sum += num
         puts num
     elsif arg.type == 'wheat'
       num = arg.size * WHEAT
       sum += num
         puts num

      end
      puts sum
     end
   end


end
