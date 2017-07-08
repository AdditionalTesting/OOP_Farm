require_relative 'field.rb'

class Farm

 def main_menu
   while true # repeat indefinitely
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
 end

 def print_main_menu
    print "Welcome to the farm. What would you like to do?"
    print '[1] Create Field'
    print '[2] Harvest Crops'
    print '[3] Status of Farm'
    print '[4] Relax'
    print '[5] Exit'
    print 'Enter a number: '
 end

 def call_option(user_selected)
   case user_selected
   when 1 then field
   when 2 then harvest
   when 3 then status
   when 4 then relax
   when 5 then exit
   end
 end

 def field
   print 'What kind of field is it: corn or wheat?'
   field_type = gets.chomp

   print 'How large is the field in Hectares?'
   field_size = gets.chomp.to_i

   Field.create(field_type, field_size)

 end

 def harvest
   Field.harvest
 end

 def status
   Field.status
 end

 def Relax
   print "Look at this farm. It is in great shape. and its all thanks to you. Relax for a bit."
 end

end
