def mot_pass # ...
    puts "définissez votre mot de passe "
    mdp = gets.chomp
    return mdp
end

def login (mdp) # ...
    puts "met ton mot de passe"
    mdp2 = gets.chomp
    while mdp2 != mdp
          puts "Veuiller retapper votre mot de passe"
       mdp2 = gets.chomp
    end
    return mdp2   
end

def welcome_screen # ...
    puts "Bienvenue dans votre zone secrète, tu vas apprendre pleins de choses secrètes !"
end

def perform
    mdp = mot_pass
    login (mdp)
    welcome_screen
end


perform