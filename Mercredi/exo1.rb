def say_hello(first_name)
  puts "Bonjour, #{first_name}"
end

def ask_name
  puts "Entrez votre nom :"
  print "> "
  return gets.chomp.to_s
end

say_hello(ask_name)
