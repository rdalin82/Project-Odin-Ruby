number = rand(1..1000)

def caesar_cipher(string, number)
  # do stuff here
  str_arr = string.split("")
  lower_case = Array("a".."z")
  upper_case = Array("A".."Z")
  space = [" "]  
  str = "" 
  number = number % 26
 
  str_arr.each do |i|
    case
    when upper_case.include?(i)
      #puts str_arr.index(i)
      str = str+ upper_case[(upper_case.index(i)+number) % 26]
   
    when lower_case.include?(i)
     #puts str_arr.index(i)
      str = str + lower_case[(lower_case.index(i)+number) % 26]
     
    when space.include?(i)
#      puts "space"
      str = str+space[0]
    end
  end
  puts string

  puts str
  puts ""
end

caesar_cipher("What is up", 1)
caesar_cipher("Abcdef", 1)
caesar_cipher("abcDef", 1)
caesar_cipher("Kat is Awesome", 1)
caesar_cipher("I am going to the zoo", 1)
caesar_cipher("BBBBCCCCCDDDDD", 1)
caesar_cipher("wHat iS uPPP", 1)
