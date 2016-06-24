#Clase CreditCard
class CreditCard
attr_accessor :name, :number, :expiration, :cvc, :status
  def initialize(name, number, expiration, cvc, status)
    @name = name
    @number = number
    @expiration = expiration
    @cvc = cvc
    @status = status
  end

end

#Cinco instancias de CreditCard
credit_card_1 = CreditCard.new("Amex", 2345673444, "12/15", 2345, [234, 567, 456, 567, 344])
credit_card_2 = CreditCard.new("ScotiaBank", 2345673744, "12/16", 2845, [234, 345, 456, 567, 344])
credit_card_3 = CreditCard.new("Bancomer",  2345673444, "12/15", 2645, [234, 345, 456, 567, 344])
credit_card_4 = CreditCard.new("Serfin",  2345473454, "12/20" , 1345, [234, 345, 456, 567, 344])
credit_card_5 = CreditCard.new("BanCoppel", 2345373464, "12/18", 2445, [567, 345, 456, 567, 344])



#Array con cinco objetos de tarjetas de crédito
cards = []
cards << credit_card_1
cards << credit_card_2
cards << credit_card_3
cards << credit_card_4
cards << credit_card_5

#método para mostrar datos de tarjetas
def show(array)
  print "|\t Name  \t|\t Number \t|\tExpiration\t|\tCVC  \t|\t     Status        \t|\n"
  print "-----------------------------------------------------------------------------------------------------------------\n"
  array.each do |card|
    if card.name.length > 6
    print "|#{card.name}\t|\t#{card.number}\t|\t #{card.expiration}  \t|\t#{card.cvc}\t|   #{card.status}   |\n"
    else
    print "|#{card.name}\t\t|\t#{card.number}\t|\t #{card.expiration}  \t|\t#{card.cvc}\t|   #{card.status}   |\n"
    end
  end 
  print "-----------------------------------------------------------------------------------------------------------------\n"
end

# tests 
cards.each do |card|
   puts "#{card.name} responds to:"
   puts "\tName: #{card.respond_to?(:name) == true}"
   puts "\tNumber: #{card.respond_to?(:number) == true}"
   puts "\tExpiration: #{card.respond_to?(:expiration) == true}"
   puts "\tcvc: #{card.respond_to?(:cvc) == true}"
   puts "\tGet status: #{card.respond_to?(:status) == true}"
   puts "\tSet status: #{card.respond_to?(:status=) == true}"
   puts "\n\n"
end

show(cards)
