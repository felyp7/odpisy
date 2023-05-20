loop do
    puts "Zadejte vstupni cenu: "
    vstupnicena = gets.strip.to_i
    puts "Zadejte odpisovou skupinu: "
    skupina = gets.strip.to_i
    puts "Zadejte zpusob odpisu (r/z): "
    zpusob = gets.strip.to_s
    
    
    rovnomerneopdpisy = Hash.new
    rovnomerneopdpisy["1"] = [20, 40, 3]
    rovnomerneopdpisy["2"] = [11, 22.25, 5]
    rovnomerneopdpisy["3"] = [5.5, 10.5, 10]
    rovnomerneopdpisy["4"] = [2.15, 5.15, 20]
    rovnomerneopdpisy["5"] = [1.4, 3.4, 30]
    rovnomerneopdpisy["6"] = [1.02, 2.02, 50]
    
    zrychleneopdpisy = Hash.new
    zrychleneopdpisy["1"] = [3, 4, 3]
    zrychleneopdpisy["2"] = [5, 6, 5]
    zrychleneopdpisy["3"] = [10, 11, 10]
    zrychleneopdpisy["4"] = [20, 21, 20]
    zrychleneopdpisy["5"] = [30, 31, 30]
    zrychleneopdpisy["6"] = [50, 51, 50]
    
    
    opravky = 0

    case zpusob
    when "r"
        case skupina
        when 1
            puts "Odpis v 1 roce: #{((vstupnicena*rovnomerneopdpisy["1"][0])/100).ceil} Kč, Zustatkova cena: #{vstupnicena-((vstupnicena*rovnomerneopdpisy["1"][0])/100).ceil}, Opravky: #{((vstupnicena*rovnomerneopdpisy["1"][0])/100).ceil}"
            opravky = ((vstupnicena*rovnomerneopdpisy["1"][0])/100).ceil
            2.times do |i|
                odpis = ((vstupnicena*rovnomerneopdpisy["1"][1])/100).ceil
                opravky = opravky + odpis
                puts "Odpis v #{i+2} roce: #{((vstupnicena*rovnomerneopdpisy["1"][1])/100).ceil} Kč, Zustatkova cena: #{vstupnicena-opravky}, Opravky: #{opravky}"
            end
        when 2
            puts "Odpis v 1 roce: #{((vstupnicena*rovnomerneopdpisy["2"][0])/100).ceil} Kč, Zustatkova cena: #{vstupnicena-((vstupnicena*rovnomerneopdpisy["2"][0])/100)}, Opravky: #{((vstupnicena*rovnomerneopdpisy["2"][0])/100).ceil}"
            opravky = ((vstupnicena*rovnomerneopdpisy["2"][0])/100).ceil
            4.times do |i|
                if (i+2==5) 
                    odpis = vstupnicena-opravky
                    opravky = opravky + (vstupnicena-opravky)
                else
                odpis = ((vstupnicena*rovnomerneopdpisy["2"][1])/100).ceil
                opravky = opravky + odpis
                end
                puts "Odpis v #{i+2} roce: #{odpis} Kč, Zustatkova cena: #{vstupnicena-opravky}, Opravky: #{opravky}"
            end
        when 3
            puts "Odpis v 1 roce: #{((vstupnicena*rovnomerneopdpisy["3"][0])/100).ceil} Kč, Zustatkova cena: #{vstupnicena-((vstupnicena*rovnomerneopdpisy["3"][0])/100).ceil}, Opravky: #{((vstupnicena*rovnomerneopdpisy["3"][0])/100).ceil}"
            opravky = ((vstupnicena*rovnomerneopdpisy["3"][0])/100).ceil
            9.times do |i|
                if (i+2==10) 
                    odpis = vstupnicena-opravky
                    opravky = opravky + (vstupnicena-opravky)
                else
                    odpis = ((vstupnicena*rovnomerneopdpisy["3"][1])/100).ceil
                    opravky = opravky + odpis
                    end
                puts "Odpis v #{i+2} roce: #{odpis} Kč, Zustatkova cena: #{vstupnicena-opravky}, Opravky: #{opravky}"
            end
        when 4
            puts "Odpis v 1 roce: #{((vstupnicena*rovnomerneopdpisy["4"][0])/100).ceil} Kč, Zustatkova cena: #{vstupnicena-((vstupnicena*rovnomerneopdpisy["4"][0])/100).ceil}, Opravky: #{((vstupnicena*rovnomerneopdpisy["4"][0])/100).ceil}"
            opravky = ((vstupnicena*rovnomerneopdpisy["4"][0])/100).ceil
            19.times do |i|
                if (i+2==20) 
                    odpis = vstupnicena-opravky
                    opravky = opravky + (vstupnicena-opravky)
                else
                    odpis = ((vstupnicena*rovnomerneopdpisy["4"][1])/100).ceil
                    opravky = opravky + odpis
                    end
                puts "Odpis v #{i+2} roce: #{odpis} Kč, Zustatkova cena: #{vstupnicena-opravky}, Opravky: #{opravky}"
            end
        when 5
            puts "Odpis v 1 roce: #{((vstupnicena*rovnomerneopdpisy["5"][0])/100).ceil} Kč, Zustatkova cena: #{vstupnicena-((vstupnicena*rovnomerneopdpisy["5"][0])/100).ceil}, Opravky: #{((vstupnicena*rovnomerneopdpisy["5"][0])/100).ceil}"
            opravky = ((vstupnicena*rovnomerneopdpisy["5"][0])/100).ceil
            29.times do |i|
                if (i+2==30) 
                    odpis = vstupnicena-opravky
                    opravky = opravky + (vstupnicena-opravky)
                else
                    odpis = ((vstupnicena*rovnomerneopdpisy["5"][1])/100).ceil
                    opravky = opravky + odpis
                    end
                puts "Odpis v #{i+2} roce: #{odpis} Kč, Zustatkova cena: #{vstupnicena-opravky}, Opravky: #{opravky}"
            end
        when 6
            puts "Odpis v 1 roce: #{((vstupnicena*rovnomerneopdpisy["6"][0])/100).ceil} Kč, Zustatkova cena: #{vstupnicena-((vstupnicena*rovnomerneopdpisy["6"][0])/100).ceil}, Opravky: #{((vstupnicena*rovnomerneopdpisy["6"][0])/100).ceil}"
            opravky = ((vstupnicena*rovnomerneopdpisy["6"][0])/100).ceil
            49.times do |i|
                if (i+2==50) 
                    odpis = vstupnicena-opravky
                    opravky = opravky + (vstupnicena-opravky)
                else
                    odpis = ((vstupnicena*rovnomerneopdpisy["6"][1])/100).ceil
                    opravky = opravky + odpis
                    end
                puts "Odpis v #{i+2} roce: #{odpis} Kč, Zustatkova cena: #{vstupnicena-opravky}, Opravky: #{opravky}"
            end
        end
    when "z"
        case skupina
        when 1
            zustatkovacena = vstupnicena
            prvnirok = zustatkovacena/3
            puts "Odpis v 1 roce: #{(prvnirok).ceil} Kč, zustatkova cena: #{(zustatkovacena-prvnirok).ceil} Kč"
            for i in 1.upto(2)
                zustatkovacena = zustatkovacena-prvnirok
                puts "Odpis v #{i+1} roce: #{((2*zustatkovacena)/(4-i)).ceil} Kč, zustatkova cena: #{(zustatkovacena-(2*zustatkovacena)/(4-i)).ceil} Kč"
                prvnirok = (2*zustatkovacena)/(4-i)
            end
              
        when 2
            zustatkovacena = vstupnicena
            prvnirok = zustatkovacena/5
            puts "Odpis v 1 roce: #{(prvnirok).ceil} Kč, zustatkova cena: #{(zustatkovacena-prvnirok).ceil} Kč"
            for i in 1.upto(4)
                zustatkovacena = zustatkovacena-prvnirok
                puts "Odpis v #{i+1} roce: #{((2*zustatkovacena)/(6-i)).ceil} Kč, zustatkova cena: #{(zustatkovacena-(2*zustatkovacena)/(6-i)).ceil} Kč"
                prvnirok = (2*zustatkovacena)/(6-i)
            end
        when 3
            zustatkovacena = vstupnicena
            prvnirok = zustatkovacena/10
            puts "Odpis v 1 roce: #{(prvnirok).ceil} Kč, zustatkova cena: #{(zustatkovacena-prvnirok).ceil} Kč"
            for i in 1.upto(9)
                zustatkovacena = zustatkovacena-prvnirok
                puts "Odpis v #{i+1} roce: #{((2*zustatkovacena)/(11-i)).ceil} Kč, zustatkova cena: #{(zustatkovacena-(2*zustatkovacena)/(11-i)).ceil} Kč"
                prvnirok = (2*zustatkovacena)/(11-i)
            end
        when 4
            zustatkovacena = vstupnicena
            prvnirok = zustatkovacena/20
            puts "Odpis v 1 roce: #{(prvnirok).ceil} Kč, zustatkova cena: #{(zustatkovacena-prvnirok).ceil} Kč"
            for i in 1.upto(19)
                zustatkovacena = zustatkovacena-prvnirok
                puts "Odpis v #{i+1} roce: #{((2*zustatkovacena)/(21-i)).ceil} Kč, zustatkova cena: #{(zustatkovacena-(2*zustatkovacena)/(21-i)).ceil} Kč"
                prvnirok = (2*zustatkovacena)/(21-i)
            end
        when 5
            zustatkovacena = vstupnicena
            prvnirok = zustatkovacena/30
            puts "Odpis v 1 roce: #{(prvnirok).ceil} Kč, zustatkova cena: #{(zustatkovacena-prvnirok).ceil} Kč"
            for i in 1.upto(29)
                zustatkovacena = zustatkovacena-prvnirok
                puts "Odpis v #{i+1} roce: #{((2*zustatkovacena)/(31-i)).ceil} Kč, zustatkova cena: #{(zustatkovacena-(2*zustatkovacena)/(31-i)).ceil} Kč"
                prvnirok = (2*zustatkovacena)/(31-i)
            end
        when 6
            zustatkovacena = vstupnicena
            prvnirok = zustatkovacena/50
            puts "Odpis v 1 roce: #{(prvnirok).ceil} Kč, zustatkova cena: #{(zustatkovacena-prvnirok).ceil} Kč"
            for i in 1.upto(49)
                zustatkovacena = zustatkovacena-prvnirok
                puts "Odpis v #{i+1} roce: #{((2*zustatkovacena)/(51-i)).ceil} Kč, zustatkova cena: #{(zustatkovacena-(2*zustatkovacena)/(51-i)).ceil} Kč"
                prvnirok = (2*zustatkovacena)/(51-i)
            end
        end
    end
    
    puts "Chcete pokracovat vypocty? (ano/ne)"
      answer = gets.strip.downcase
      break if answer == "ne"
      end
