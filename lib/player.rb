class Player
  attr_accessor :name, :life_points

  def initialize(name, life_points)
    @name = name
    @life_points = life_points
  end

  def show_state
    puts("Le joueur #{@name} a #{@life_points} points de vie")
  end

  def get_damage(damage)
    @life_points -= damage
    if @life_points <= 0
      @life_points = 0
      puts('Le joueur a été tué!!!!')
    end
  end

  def attacks(player)
    player.get_damage(compute_damage)
    puts("Le joueur #{name} attaque le joueur #{player.name}")
    puts("il lui inflige #{compute_damage} points de dommages")
  end

  def compute_damage
    return rand(1..6)
  end
end
