# VERSION 1 

# Methode que prends un tableau de notes et qui retourne une moyenne de ces notes
# def calculateAverage notes
#   total_note = 0
#   notes.each do |note|
#     total_note += note
#   end
#   total_note / notes.length
# end

# # Methode qui orchestre le processus
# def perform
#   puts '*' * 40
#   puts 'Bienvenue dans le calculateur de moyenne'
#   puts 'Veuillez entrer vos notes'
#   puts '*' * 40
#   puts ' '
  
#   notes = []
#   note = ''
#   while note != 'stop'
#     puts 'Entrez une note sur 20 ou tapez STOP si vous avez terminé' 
#     note = gets.chomp.downcase
#     if note == 'stop'
#       break
#     elsif note.to_i > 20
#       puts 'Vous avez donné une note supérieur à 20, veuillez ré-essayer'
#       next
#     elsif note != '0' && note.to_i == 0
#       puts 'Vous n\'avez pas entré un nombre, veuillez ré-essayer'
#       next
#     end
#     notes << note.to_i
#   end
  
#   puts '*' * 40
#   puts "Il y a eu #{notes.length} notes de saisies, et la moyenne est de #{calculateAverage(notes)}/20"
#   puts '*' * 40
# end

# perform()












# VERSION 2

# Methode que prends un tableau de notes et qui retourne une moyenne de ces notes
# def calculateAverage notes
#   total_note = 0
#   notes.each do |note|
#     total_note += note
#   end
#   total_note / notes.length
# end

# # Methode qui orchestre le processus
# def perform
#   puts '*' * 40
#   puts 'Bienvenue dans le calculateur de moyenne'
#   puts '*' * 40
#   puts ' '
  
#   puts 'Entrez vos notes en les séparants d\'un espace'
#   puts 'Si vous entrez des lettres ou une note supérieure à 20, elle sera retirée de la liste'
#   print '> ' 
#   notes_string = gets.chomp

#   notes = notes_string.split ' '

#   notes.map! do |note|
#     if note.to_i > 20 || note != '0' && note.to_i == 0
#       notes.delete(note)
#     end
#     note.to_i
#   end
  
#   puts '*' * 40
#   puts "Il y a eu #{notes.length} notes de saisies, et la moyenne est de #{calculateAverage(notes)}/20"
#   puts '*' * 40
# end

# perform()















# VERSION 2

# Methode qui prends des notes au format suivant ['10/20', '6/10', '25/30'] et un format /20 ou /10 ou /30
# Puis retourne un tableau [10, 5, 8, 9] sur le format souhaité /20, /30, /10
def convertToNote global_notes, format 
  notes = []
  global_notes.each do |note|
    format_note = note.split('/')[1]
    note = note.split('/')[0].to_f
    case format.to_i
    when 10
      if format_note == '10'
        notes << note
      elsif format_note == '20'
        notes << note / 2
      elsif format_note == '30'
        notes << note / 3
      end
    when 30
      if format_note == '10'
        notes << note * 3
      elsif format_note == '20'
        notes << note * 1.5
      elsif format_note == '30'
        notes << note 
      end
    else #20
      if format_note == '10'
        notes << note * 2
      elsif format_note == '20'
        notes << note
      elsif format_note == '30'
        notes << note / 1.5
      end
    end
  end
  notes
end

# Methode qui prends un tableau de notes et qui retourne une moyenne de ces notes
def calculateAverage notes
  total_note = 0
  notes.each do |note|
    total_note += note
  end
  total_note / notes.length
end

# Methode qui orchestre le processus
def perform
  puts '*' * 40
  puts 'Bienvenue dans le calculateur de moyenne'
  puts '*' * 40
  puts ' '
  
  puts 'Entrez vos notes en les séparants d\'un espace au format suivant : 10/10 20/30 12/20'
  print '> ' 
  notes = gets.chomp
  puts 'Entrez le format auquel vous souhaitez la moyenne (10 ou 20 ou 30)'
  print '> ' 
  format_choice = gets.chomp

  notes = notes.split ' '
  
  puts '*' * 40
  puts "Il y a eu #{notes.length} notes de saisies, et la moyenne est de #{calculateAverage(convertToNote(notes, format_choice)).to_i}/20"
  puts '*' * 40
end

# perform()