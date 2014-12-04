

def caesar_cipher(string, number)
  # do stuff here
  str_arr = string.split("")
  lower_case = Array("a".."z")
  upper_case = Array("A".."Z")
  space = [" "]  
  str = "" 
 
  for i in str_arr
    if upper_case.include?(i)
#      puts "upper case"
      str = str+ upper_case[str_arr.index(i)+number]
    end
    if lower_case.include?(i)
#     puts "lower case"
      str = str + lower_case[str_arr.index(i)+number]
    end
    if space.include?(i)
#      puts "space"
      str = str+space[0]
    end
  end
  puts string
  puts str
  puts ""
end

caesar_cipher("What is up", 6)
caesar_cipher("Abcdef", 1)
caesar_cipher("abcDef", 1)

