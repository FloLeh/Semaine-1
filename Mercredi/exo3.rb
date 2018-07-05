#CHOISIR UN MDP
def define_password
  puts "Choisissez un mot de passe :"
  print "> "
  @user_password = gets.chomp
end
#VERIFIER LE MDP
def verif_password
  puts "Entrez votre mot de passe pour verifier :"
  print "> "
  @verif = gets.chomp
end

def password_verification
  while @verif != @user_password
    verif_password
  end

  if @verif == @user_password
    puts "True"
  end
end
#SE CONNECTER AVEC LE MDP
def ask_password
  puts "Entrez votre mot de passe :"
  print "> "
   @password = gets.chomp
end

def connect
  while @password != @user_password
    ask_password
  end

  if @password == @user_password
    puts "You are online"
  end

end

def perform
  define_password
  verif_password
  puts password_verification
  ask_password
  connect
end

perform
