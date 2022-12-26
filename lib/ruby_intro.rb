# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum #ผลรวมของ arr
end

def max_2_sum arr
  max1 = 0 #ประกาศตัวแปร
  max2 = 0 #ประกาศตัวแปร
  sum = 0   #ประกาศตัวแปร
  if arr.length > 1 #ตั้งเงื่อนไขว่าถ้าจำนวนของ arr มากกว่าหนึ่งให้ทำในเงื่อนไขนี้
    max1 = arr.sort[-1] #จัดเรียงจากมากไปน้อยแล้วเอาดัวสุดท้ายก็คือค่าที่มากที่สุดให้เท่ากับ max1
    max2 = arr.sort[-2] #จัดเรียงจากมากไปน้อยแล้วเอาดัวเกือบสุดท้ายให้เท่ากับ max2
    sum = max1 + max2 #เอา max1+max2 แล้วเท่ากับ sum จะได้ค่าตัวทึ่มากที่สุดกับตัวรองมาบวกกัน
    return sum 
  elsif arr.length == 1 # เงื่อนไขถ้า arr มีแค่ตัวเดียวให้ทำในเงื่อนไขนี้
    return arr[0] #return ตัวเดียวที่มี
  else
    return 0 #ถ้าไม่มีอะไรเลยให้ return 0
  end
end

def sum_to_n? arr, n
  result = false #ประกาศให้ result มีค่าเป็น false
  if arr.length > 1 #ถ้าจำนวนของ arr น้อยกว่า 1 ให้ทำเงื่อนไขนี้
    for i in 1..arr.length - 1 #ตั้ง loop เพื่อเอาเป็นค่าตัวที่ 1
      for j in 0..i - 1 #ตั้ง loop เพื่อเอาเป็นค่าตัวที่ 2
        if arr[j] + arr[i] == n # เอามาบวกกันถ้าเท่ากับ n ให้ result มีค่าเป็น true
          result = true 
          break #หยุดทำงาน
        end
      end
    end
  end
  return result
end

# Part 2

def hello(name)#methodนี้คือรับชื่อมาแล้วปริ้น Hello+ชื่อ
  return "Hello, #{name}" 
end

def starts_with_consonant? s#methodนี้ให้รับค่ามาแล้วตรวจดูว่าเป็นสระไหม
  if /^[^aeiou\W]/i.match(s)#ตรวจว่าใช่สระไหมถ้าใช่ให้ return true
    return true
  else #ไม่ใช่ให้เป็น false
    return false 
  end
end

def binary_multiple_of_4? s #methodนี้ให้รับค่า string แล้วมาเทียบดูว่าถ้าแปลเป็นเลขฐานสองที่มีผลคูณเท่ากับ 4 ไหม
  if s.match(/^[01]*[00]$/)#เอามาเทียบว่าใช่ไหมถ้าใช่ให้ return trun
    return true
  else #ไม่ใช่ให้ return false
    return false
  end
end

# Part 3

class BookInStock #ประกาศ class BookInStock
  def initialize(isbn,price) #สร้าง methodให้รับเลขบาร์โค้ดและราคาของหนังสือ
		@isbn=isbn
		@price=price
		
		if @isbn.empty? || @price <= 0 #ถ้าไม่ใส่ให้เด้ง Error
			raise ArgumentError
		end
	end
	
	attr_accessor :isbn #ทำให้สามารถเข้าถึงค่า isbn ได้จากนอก class
	attr_accessor :price#ทำให้สามารถเข้าถึงค่า price ได้จากนอก class

	def price_as_string #ให้ปริ้นราคาเป็นเลขทศนิยม 2 หลัก
		"$#{'%.2f' %  @price}"
	end
end
