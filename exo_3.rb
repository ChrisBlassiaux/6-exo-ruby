# Méthode qui prend 2 paramètres (nom et surnom) et qui affiche 
# Hello  surnom    # si seul le surnom est fourni
# Bonjour  nom     # si seul le nom est fourni
# Bonjour Nom     # *ET QUE* si les 2 sont fournis
# PS : Les différences entre les résultats sont : la majuscule sur la première lettre et les espaces

def sayHello last_name = nil, nickname = nil
  if nickname && !last_name
    puts  'Hello  ' +  nickname.downcase
  elsif !nickname && last_name
    puts  'Bonjour  ' +  last_name.downcase
  elsif nickname && last_name
    puts  'Bonjour ' +  last_name.capitalize
  end
end

# tests
# sayHello('BlASsiaux', 'Chris')
# sayHello('BlASsiaux')
# sayHello(nil, 'chris')
# sayHello()