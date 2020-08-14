require 'securerandom'
# Question 1: Mỗi Person có 2 instance variable là 'name' và 'age'. Tạo setter và getter cho 'name' và 'age'

class Person
	@name = nil 
	@age = nil

	# Question 3: Class Person có 1 class variable là count.
	@@count = 0

	# Question 2: Khi khởi tạo 1 Person có thể truyền 'name' và 'age'
	def initialize(name, age)
		@name = name
		@age = age

		# Question 4: Mỗi lần khởi tạo 1 Person thì biến count sẽ tăng lên 1.
		@@count += 1
	end

	def setName=(name)
		@name = name
	end

	def setAge=(age)
		@age = age
	end

	def getName()
		@name
	end

	def getAge()
		@age
	end

	# Question 5: Person có 1 instane method tên là 'introduce' sẽ in ra kết quả là: "My name is [name của person đó]. I'm [age của person đó] years old".;''
	def introduce()
		puts "My name is " + @name + ". I'm " + @age.to_s() + " years old"
	end

	# Question 6: Person có 1 class method tên là 'total_count' sẽ in ra kết quả là: "Total number of people is [tổng số Person đã được tạo]"
	def self.total_count()
		puts "Total number of people is " + @@count.to_s()
	end

	# Question 17: Viết 1 instance method bất kì, raise Exception (với message bất kì) trong method đó, sau đó catch exception và in ra message của Exception đó.

	def calBMI(weight, height)
		raise Exception, "Weight is less than zero" if weight < 0
		throw(:NegativeHeightException) if height < 0

		result = weight * 1.0 / height 
		puts result			
	end
end

catch (:NegativeHeightException) do
end

# person = Person.new("Me", 12)
# person.calBMI(50, -60)
# person.calBMI(-50, 60)

# Question 7: Dùng hàm 'times' tạo 1 mảng 'people' gồm 20 person với name là 'Person 1' cho đến 'Person 20', age của mỗi Person random từ 10 -> 90

$people = []

def answer_7(people)
	20.times { |n|  
		n = Person.new("Person " + (n+1).to_s(), SecureRandom.random_number(10..90))
		people << n
	}

	# $people.each { |e|  
	# 	puts e.introduce()
	# }
end

answer_7($people)

# Question 8: Với mảng 'people' lọc ra những Person có tuổi nhỏ hơn 18

$peopleLessThan18 = $people.select { |e| e.getAge < 18 }

# Question 9: Với mảng 'people' xóa những Person có tuổi nhỏ hơn 18

$people.delete_if { |e| e.getAge < 18 }

# Question 10: Sort mảng 'people' theo tuổi tăng dần.

$people.sort! { |a, b|  a.getAge <=> b.getAge }

# Question 11: Sort mảng 'people' theo tuổi giảm dần.

$people.sort! { |a, b|  b.getAge <=> a.getAge }

# Question 12: Delete 1 phần tử ở vị trí xác định trong mảng 'people'

$people.delete_at(1)

# Question 13: Xem phần module enumerable của Ruby: https://ruby-doc.org/core-2.5.1/Enumerable.html (Array và Hash trong Ruby có include module này) để tìm ra Person lớn tuổi nhất, Person nhỏ tuổi nhất.

peopleHasHighestAge = $people.max { |a, b| a.getAge <=> b.getAge }

# Question 14: Dùng CÁC vòng lặp trong Ruby và CÁC hàm (khả thi) của Array để tăng tuổi của từng Person trong mảng 'people' lên 1.

$people.map { |e| e.setAge = e.getAge + 1 }

# Question 15: Không dùng vòng lặp (dùng CÁC hàm của Array) lấy ra tất cả các 'age' của các Person trong mảng 'person'

$ageArr = []
$people.map { |e| $ageArr << e.getAge }

# Question 16: Tạo 1 mảng 'people_2' tương tự câu 7, nối mảng 'people_2' vào 'people'

$people_2 = []
answer_7($people_2)
$peopleUnion = $people + $people_2

i = 0
i ++
puts i
