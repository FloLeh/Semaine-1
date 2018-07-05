@etage = 10
def faces
  @lancer = rand(1..6)
  puts "Le dé est tombé sur le chiffre #{@lancer}."
end

def jouer
  if @lancer == 1
    reculer
  elsif @lancer == 5 || @lancer == 6
    avancer
  end
end

def reculer
  if @etage == 10
    puts "vous ne pouvez pas reculer"
  else
    @etage += 1
  end
end

def avancer
    @etage -= 1
end


def escalier(pos)
  @position = 1
  a = 10
  i = 1
  puts "voici la pyramide :"
  10.times do
    if @position == pos
      puts "#{" " * (a-1) + "8" + "#" * i}"
      a -= 1
      @position += 1
    else
      puts "#{" " * (a) + "#" * i}"
      a -= 1
      i += 1
      @position += 1
    end
  end
end

def continu
  puts "continuer? non = 2 oui = 1"
  return gets.to_i
end

partie = 1

while (partie == 1)
  faces
  jouer
  escalier(@etage)
  if @etage == 1
    puts "Vous avez gagné!!!"
    partie = 2
  end
  puts @etage
  partie = continu
end
