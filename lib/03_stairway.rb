# S’il fait 5 ou 6, il avance d'une marche et le programme le lui dit (ainsi que la marche où il est à présent)
  # S’il fait 1, il descend d'une marche et le programme le lui dit (ainsi que la marche où il est à présent)
  # S’il fait 2, 3, ou 4 rien ne se passe, et le programme le lui dit (ainsi que la marche où il est resté)

def welcome # message d'accueil et initialisation du jeu
	puts "Bonjour, vous êtes au rdc"
	etage = 0
	return etage
end


def lancer_de # lancer de dé, renvoie un chiffre entre 1 et 6
	puts "Veuillez lancer le dé pour monter les étages"
	x = gets.chomp
	result_de = rand(1..6)
	puts "Le dé est tombé sur #{result_de}"
	return result_de
end


def calculer_etage(result_de, etage) # calcul l'étage en fonction du résultat du dé. Affiche le résultat au joueur. Recommence jusqu'à l'étage 10.
	level = etage

	while level < 10
		if result_de == 5 || result_de == 6
			level = level + 1
			puts "Bravo! Vous montez d'un étage, vous êtes à l'étage #{level}"
			if level == 10
				break
			end
			result_de = lancer_de
		elsif result_de == 1 && level !=0
			level = level - 1
			puts "Oups! Vous descendez d'un étage, vous êtes à l'étage #{level}"
			result_de = lancer_de
		elsif result_de == 1 && level ==0
			puts "Vous êtes déjà au rdc!"
			result_de = lancer_de
		else 
			puts "Vous ne changez pas d'étage, vous êtes à l'étage #{level}"
			result_de = lancer_de
		end
	end	
	puts "Bravo! Vous êtes arrivés au 10ème étage! Le jeu s'arrête ici."
end


def perform
	etage = welcome
	result_de = lancer_de
	calculer_etage(result_de, etage)
end


perform




  
