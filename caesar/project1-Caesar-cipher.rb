number = rand(1..1000)

def caesar_cipher(string, number)
  # do stuff here
  str_arr = string.split("")
  lower_case = Array("a".."z")
  upper_case = Array("A".."Z")
  numbs = Array("1".."9")
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
      #puts "space"
      str = str+space[0]
    when numbs.include?(i)
      str += numbs[numbs.index(i)]
    end
  end
 return str
end



