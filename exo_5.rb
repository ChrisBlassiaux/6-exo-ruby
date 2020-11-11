# Generer un hash avec les lettres de l'alphabet et leurs poids
def generateHashWithLetterAndWeight 
  hash = {}
  for num in 0..25
    hash[[*('a'..'z')][num]] = (num + 1).to_s
  end
  new_hash = {} 
  hash.each do |k, v| 
    v.length > 1 ? new_hash[k] = v[0].to_i + v[1].to_i : new_hash[k] = v
  end
  new_hash
end

# Methode qui calcule le poid des mots
def calculateWeight word
  letters = word.split
  weight = 0
  hash_alphabet = generateHashWithLetterAndWeight()
  letters.each do |letter|
   (/[[:upper:]]/.match(letter)) ? weight += hash_alphabet[letter.downcase].to_i * 2 : weight += hash_alphabet[letter.downcase].to_i
  end
  weight
end

# Methode qui orchestre le processus
def perform
  puts '*' * 40
  puts 'Bienvenue dans le calculateur de poids des mots'
  puts '*' * 40
  puts ' '

  puts 'Entrez vos mots dans le format suivant : A V E C D E S E S P A C E S'
  print '> ' 
  capture = gets.chomp

  puts '*' * 40
  puts "Le poid de votre saisie : #{calculateWeight(capture)}"
  puts '*' * 40
end

# perform()