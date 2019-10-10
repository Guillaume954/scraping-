require 'rubygems'
require 'nokogiri'
require 'open-uri'

=begin
1.définir la page
2.isolé la monnaie
3.isolé son cours
4. Qui et qui ? 
=end

def cours_crypto
	page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
#la source

	rates = page.css('[class=price]')
#le cours

	nom_crypto = page.css("a[class='currency-name-container link-secondary']")
#la monnaie


#qui est qui
  table = Hash.new

    bitcoin = nom_crypto.map { |cryp| cryp.text }
    prix = rates.map { |rate| rate.text }

    marché = Hash[bitcoin.zip(prix)]

    puts marché

end

cours_crypto

=begin

- Pour enlever le dollars, utiliser la fonction gsub ou .delete
- Passer d'un string à un float 	
=end