require 'bundler'
require 'pry'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new('Josiane', 10)
player2 = Player.new('José', 10)

while player1.life_points > 0 && player2.life_points > 0
  puts('=========================================')
  puts("Voici l'état de chaque joueur:")
  puts(player1.show_state)
  puts(player2.show_state)
  puts
  puts("Passons à la phase d'attaque :")
  puts(player1.attacks(player2))
  break if player2.life_points <= 0

  puts(player2.attacks(player1))
  break if player1.life_points <= 0

  puts
end
