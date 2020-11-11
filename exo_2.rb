# Methode qui retourne un tableau avec les différentes lignes de la table de multiplication
def multiplicationTable nb
  table = []
  for num in 1..10
    table << "#{num} * #{nb} = #{nb * num}" 
  end
  table
end

# La table en main, nous en faisons que que nous souhaitons 
def perform
  puts 'Entrez un nombre :'
  print '> '
  nb = gets.chomp.to_i

  puts  "La table de multiplication du chiffre #{nb} est :"
  
  multiplicationTable(nb).each do |result|
    puts result
  end
end

# tests
# perform()
# p multiplicationTable(5) 
# p multiplicationTable(10) 