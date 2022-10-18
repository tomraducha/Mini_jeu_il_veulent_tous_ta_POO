# On créer notre classe Player
class Player
  attr_accessor :name, :life_points

  # Initialise le constructor
  def initialize(name, life_points)
    @name = name
    @life_points = life_points
  end

  # affiche l'état d'un joueur
  def show_state
    puts("Le joueur #{@name} a #{@life_points} points de vie")
  end

  # Applique le domage au joueur
  def get_damage(damage)
    @life_points -= damage
    puts('Le joueur a été tué!!!!') if @life_points <= 0
  end

  # Lance une attaque
  def attacks(player)
    player.get_damage(compute_damage)
    dmg = compute_damage
    puts("Le joueur #{name} attaque le joueur #{player.name}")
    puts("il lui inflige #{dmg} points de dommages")
  end

  # Dommages aléatoires
  def compute_damage
    return rand(0..6)
  end
end
