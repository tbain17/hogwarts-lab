require_relative('../models/student')
require_relative('../models/house')
require('pry-byebug')

Student.delete_all()
House.delete_all()

house1 = House.new({
  'name' => 'Griffindor'
})
house1.save()

house2 = House.new({
  'name' => 'Slytherin'
})
house2.save()

house3 = House.new({
  'name' => 'Hufflepuff'
})
house3.save()

house4 = House.new({
  'name' => 'Ravenclaw'
})
house4.save()

student1 = Student.new({
  'first_name' => 'Harry',
  'second_name' => 'Potter',
  'house_id' => house1.id,
  'age' => 14
  })

student2 = Student.new({
  'first_name' => 'Ron',
  'second_name' => 'Weasley',
  'house_id' => house4.id,
  'age' => 15
  })

student3 = Student.new ({
  'first_name' => 'Hermione',
  'second_name' => 'Grainger',
  'house_id' => house2.id,
  'age' => 13
  })

student4 = Student.new({
  'first_name' => 'Luna',
  'second_name' => 'Lovegood',
  'house_id' => house3.id,
  'age' => 16
  })

student5 = Student.new({
  'first_name' => 'Draco',
  'second_name' => 'Malfoy',
  'house_id' => house1.id,
  'age' => 16
  })

  student1.save()
  student2.save()
  student3.save()
  student4.save()
  student5.save()

binding.pry()
nil


  #
  # Gryffindor
  # Slytherin
  # Hufflepuff
  # Ravenclaw
