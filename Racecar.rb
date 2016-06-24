#RaceCar class
class RaceCar
  attr_accessor :name, :avg_speed, :lv
  def initialize(name, lap_time1, lap_time2, lap_time3, lap_time4, lap_time5)
    @name = name
    @lap_time1 = lap_time1
    @lap_time2 = lap_time2
    @lap_time3 = lap_time3
    @lap_time4 = lap_time4
    @lap_time5 = lap_time5
    average_speed
    @avg_speed
    level
    @lv
  end




  #método para obtener velocidad promedio
  def average_speed
    @avg_speed = (((100/@lap_time1) + (100/@lap_time2) + (100/@lap_time3) + (100/@lap_time4) + (100/@lap_time5))/5).round(2)
  end


  #método que muestra nivel de cada race car
  def level
    case @avg_speed
    when 0..9
      @lv = "Principiante"
    when 10..14.9
      @lv = "Normal"
    when 15..20
      @lv = "Medio"
    when 20.1..30
      @lv = "Avanzado"
    end
  end


end

#Team class
class Team 
attr_accessor :race_cars
  def initialize(race_car_instances)
    @race_cars = race_car_instances
  end

  #método para agregar nuevo race car
  def add_race_car(race_car_instance)
    race_cars << race_car_instance
  end

  #método para calcular promedio de velocidad del equipo
  def average_speed_of_team
  speeds = []
    @race_cars.each do |car|
      speeds << car.avg_speed
    end
  speeds.inject(:+)/speeds.length
  end
end

# método para buscar race car
def search(car_name, team)
  team.race_cars.each do |car|
    if car.name == car_name
      return "#{car_name} is a racer"
    end
    end
end

#método para generar la tabla
def table(array)
  print "|  Name   \t|  Nivel \t|\n"
  print "---------------------------------\n"
  array.each do |car|
    if car.name.length > 6
    print "|  #{car.name}\t|  #{car.lv}\t|\n"
    else
    print "|  #{car.name} \t|  #{car.lv}\t|\n"
  end
  end
end


#método para mostrar nombre y nivel del race car
# def show_car_lv

# end


#instancias de RaceCar
car_1 = RaceCar.new("Force", 9, 8 ,7.5 ,9.1, 8)
car_2 = RaceCar.new("Power", 10, 9, 8, 7.5, 10.2)
car_3 = RaceCar.new("Passwater", 9, 8, 5, 9, 6)
car_4 = RaceCar.new("Banjo", 3, 5, 10, 11, 15)
car_5 = RaceCar.new("Duck", 4, 4 ,4 ,4, 8)
# car_6 = RaceCar.new ("Hugo", 2, 3 , 1, 2, 2)
cars = [car_1, car_2, car_3, car_4, car_5]
#tests

p "car1: #{car_1.average_speed} m/s"
#ej. car1: 9.5 m/s
p "car2: #{car_2.average_speed} m/s"
#ej. car2: 12.01 m/s
p "car3: #{car_3.average_speed} m/s"
#ej. car3: 10.65 m/s
p "car4: #{car_4.average_speed} m/s"
#ej. car4: 11.0 m/s
p "car5: #{car_5.average_speed} m/s"
#ej. car5: 10.15 m/s
# p "car6: #{car_6.average_speed} m/s"
#ej. car6: 15.51 m/s

#create a team of cars 
team1 = [car_1, car_2, car_3, car_4, car_5]
team_one = Team.new(team1)
#test para buscar race car en equipo team_one
# p search("Power", team_one) # CHECAR PQ DA FALSE
p search("Power", team_one) == "Power is a racer"

# calculate average speed of team
p team_one.average_speed_of_team
# ej. 10.66 

#método para mostrar nombre y nivel del race car
table(cars)
# Ejemplo de tabla que muestra nombre y nivel del race car

# |    Name        |    Nivel        |
# ------------------------------------
# |   Force        |   Principiante  |
# |   Power        |   Medio         |
# |   Passwater    |   Normal        |
# |   Banjo        |   Normal        |
# |   Duck         |   Normal        |