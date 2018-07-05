def demande_etages
  puts "Entrez le nombre d'étages voulut :"
  print "> "
  return gets.to_i + 1
end
#creation de la pyramide
def pyramide(etages)
  a = etages
  diese = "#"
  space = " "
  puts "voici la pyramide :"
  etages.times do |etage|
    print space * a
    print diese * etage
    puts
    a -= 1
    etage += 1
  end
end

def demande_etages
  puts "Entrez le nombre d'étages voulut :"
  print "> "
  return gets.to_i
end

def pyramide(etages)
    i = 1
    for j in 1..etages
    puts " " * (etages-1) + "#" * i
    etages -= 1
    i += 2
  end
end
