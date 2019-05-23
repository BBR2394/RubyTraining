#!/usr/bin/env ruby

#require "./model.rb"
require "./character.rb"

class MyMainClass
	attr_accessor :name
	#initialize c'est le constructeur
	def initialize(defname = "toto")
		@name = defname
		@id = 1
	end

	def print_name
		puts "le nom est #{@name} et l'id #{@id}"
	end
end

# ca permet d'éxecuter la suite seulement si c'est ce fichier ci qui est executé
if __FILE__ == $0

	ob =  MyMainClass.new
	ob.print_name

	obbis = MyMainClass.new("titi")
	obbis.print_name

	personne = Character.new("Emmanuel","Macron",41, 1 )
	personne.printCharacter()
	personnedeux = Character.new()
	personnedeux.printCharacter()
	listCharacters = [personne, personnedeux]
	#listCharacters << personne
	#listCharacters << personnedeux
	puts "here i print the both character created"
	listCharacters.each do |char|
		char.printCharacter()
	end
end

#convention de nommage pour les variable
# quand ca commence par une miniscule c'est une variable ex : toto
# quand ca commence par une Majuscule c'est une constante ex : Toto
# -> et justement les nom de classe doivent commencer par une majuscule
# -> car elles doievent etre constante
# quand ca commence par @ c'est un variable d'instance
# et quand ca commcence par @@ c'est une variable de classe