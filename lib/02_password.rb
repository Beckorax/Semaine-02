def mot_pass#  le programme va demander à l'utilisateur de définir un mot de passe et le garder en mémoire (en le stockant dans une variable).
	puts "définissez votre mot de passe "
	mdp = gets.chomp
	return mdp
end

def login (mdp)# La partie login va demander à l'utilisateur son mot de passe. Tant que l'utilisateur n'a pas rentré le même mot de passe que renseigné au moment du signup, le programme va lui dire qu'il s'est trompé et qu'il doit recommencer. Si l'utilisateur trouve le bon mot de passe, le programme va le rediriger vers l'écran d'accueil.
	puts "met ton mot de passe"
	mdp2 = gets.chomp
	 while mdp2 != mdp
       	puts "Veuiller retapper votre mot de passe"
    	mdp2 = gets.chomp
    end
	
end

def welcome_screen# L'écran d'accueil va dire à l'utilisateur qu'il est bienvenu dans sa zone secrète, et lui dire quelques secrets 
	puts "Bienvenue dans votre zone secrète, tu vas apprendre pleins de choses secrètes !"
end

def perform
	mdp = mot_pass
	login (mdp)
	welcome_screen
end

perform