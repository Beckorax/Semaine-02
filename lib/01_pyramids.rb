def tests_etage (e)
   # on contrôle que l'utilisateur entre bien un nombre pair
  while e % 2 == 0 || e.class != Integer || e<1 || e>25
         puts "Veuillez rentrer un nombre entier impair compris entre 1 et 25"
      e = gets.chomp.to_i
  end
  return e
end

def half_pyramid # Pyramide centrée à gauche
   puts "Hello, tu veux une pyramide tordue de combien d'étages??"
   e = gets.chomp.to_i
   # on contrôle que l'utilisateur entre bien un nombre entier pair
   i = tests_etage (e)
   (1..i).each{|n| puts ("#" * n).rjust(i)}
end

def full_pyramid # Pyramide centrée
   puts "Hello, tu veux une pyramide centrée de combien d'étages??"
   e = gets.chomp.to_i    # on contrôle que l'utilisateur entre bien un nombre entier pair
   i = tests_etage (e)   
   s = i

   puts (" ")*(s) + ("#")

   for n in (1..i)
       puts (" ")*(s-1) + ("#") *(2*n+1)
       s = s-1
   end
end

def wtf_pyramid # Pyramide en forme de losange
   puts "Hello, tu veux une pyramide losange de combien d'étages (entre un nombre impair entre 1 et 25)??"
   e = gets.chomp.to_i

   # on contrôle que l'utilisateur entre bien un nombre entier pair
  i = tests_etage(e)    #initialisation variables
   i = i/2
   s = i

   #création partie haute
   puts (" ")*(s) + ("#")

   for n in (1..i)
       puts (" ")*(s-1) + ("#") *(2*n+1)
       s = s-1
   end    #création partie basse
   for n in (1..i)
       puts (" ")*(s+1) + ("#") *(2*i-2*n+1)
       s = s+1
   end
   end

   def perform
   half_pyramid
   full_pyramid
   wtf_pyramid
    end 

    perform
