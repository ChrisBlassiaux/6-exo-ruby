# Méthode qui retournera true, si le mot est un palindrome, sinon false
def isPalindrome? word
  word.reverse == word
end

# Méthode qui affichera si c'est un palindrome avec deux réponses différentes
def perform
  puts 'Entrez un mot :'
  print '> '
  word = gets.chomp
  puts isPalindrome?(word) ? 'Le mot saisie est un palindrome' : 'Le mot saisie n’est pas un palindrome'
end

# tests
# perform()
# puts isPalindrome?('kayak')
# puts isPalindrome?('chris')