loop do

    def format_number(number)

        whole, decimal = number.to_s.split(".")

        num_groups = whole.chars.to_a.reverse.each_slice(3)

        whole_with_commas = num_groups.map(&:join).join(',').reverse

        [whole_with_commas, decimal].compact.join(".")

      end

    

    puts "Zadejte zpusob odpisu (r/z): "

        zpusob = gets.strip.to_s

    def RovnomerneOdpisy(skupina, vstupnicena)

        rovnomerneopdpisy = Hash.new

        rovnomerneopdpisy["1"] = [20, 40, 3]

        rovnomerneopdpisy["2"] = [11, 22.25, 5]

        rovnomerneopdpisy["3"] = [5.5, 10.5, 10]

        rovnomerneopdpisy["4"] = [2.15, 5.15, 20]

        rovnomerneopdpisy["5"] = [1.4, 3.4, 30]

        rovnomerneopdpisy["6"] = [1.02, 2.02, 50]

        puts "Odpis v 1 roce: #{format_number(((vstupnicena*rovnomerneopdpisy["#{skupina}"][0])/100).ceil)} Kč, Zustatkova cena: #{format_number(vstupnicena-((vstupnicena*rovnomerneopdpisy["#{skupina}"][0])/100).ceil)}, Opravky: #{format_number(((vstupnicena*rovnomerneopdpisy["#{skupina}"][0])/100).ceil)}"

            opravky = ((vstupnicena*rovnomerneopdpisy["#{skupina}"][0])/100).ceil

            ((rovnomerneopdpisy["#{skupina}"][2])-1).times do |i|

                if (i+2==rovnomerneopdpisy["#{skupina}"][2]) 

                    odpis = vstupnicena-opravky

                    opravky = opravky + (vstupnicena-opravky)

                else

                odpis = ((vstupnicena*rovnomerneopdpisy["#{skupina}"][1])/100).ceil

                opravky = opravky + odpis

                end

                puts "Odpis v #{i+2} roce: #{format_number(odpis)} Kč, Zustatkova cena: #{format_number(vstupnicena-opravky)}, Opravky: #{format_number(opravky)}"

            end

    end

    def ZrychleneOdpisy(skupina, vstupnicena)

        zrychleneodpisy = Hash.new

        zrychleneodpisy["1"] = [3, 4, 3]

        zrychleneodpisy["2"] = [5, 6, 5]

        zrychleneodpisy["3"] = [10, 11, 10]

        zrychleneodpisy["4"] = [20, 21, 20]

        zrychleneodpisy["5"] = [30, 31, 30]

        zrychleneodpisy["6"] = [50, 51, 50]

        zustatkovacena = vstupnicena

            odpis = zustatkovacena/3

            opravky = zustatkovacena/3

            puts "Odpis v 1 roce: #{format_number((odpis).ceil)} Kč, zustatkova cena: #{format_number((zustatkovacena-odpis).ceil)} Kč, Opravky: #{format_number(opravky)}"

            for i in 1.upto((zrychleneodpisy["#{skupina}"][2])-1)

                zustatkovacena = zustatkovacena-odpis

                odpis = ((2*zustatkovacena)/(((zrychleneodpisy["#{skupina}"][2])+1)-i)).ceil

                opravky = opravky+odpis

                puts "Odpis v #{i+1} roce: #{format_number(odpis)} Kč, zustatkova cena: #{format_number((zustatkovacena-(2*zustatkovacena)/(((zrychleneodpisy["#{skupina}"][2])+1)-i)).ceil)} Kč, Opravky: #{format_number(opravky)}"

            end

    end

case zpusob

    when "r"

        puts "Zadejte vstupni cenu: "

        vstupnicena = gets.strip.to_i

        puts "Zadejte odpisovou skupinu: "

        skupina = gets.strip.to_i

        RovnomerneOdpisy(skupina, vstupnicena)

    when "z"

        puts "Zadejte vstupni cenu: "

        vstupnicena = gets.strip.to_i

        puts "Zadejte odpisovou skupinu: "

        skupina = gets.strip.to_i

        ZrychleneOdpisy(skupina, vstupnicena)

end

    

    puts "Chcete pokracovat vypocty? (ano/ne)"

      answer = gets.strip.downcase

      break if answer == "ne"

      end
