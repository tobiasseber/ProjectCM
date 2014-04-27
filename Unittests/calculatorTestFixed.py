import calculatorFixed
import unittest

class calculatorTest(unittest.TestCase):


	def setUp(self):
		print "\nSwitch on calculator"
		self.calculator = calculatorFixed.Calculator()
		self.calculator.switchOn()
		self.calculator.clear()
	
		
	def tearDown(self):
		print "\nSwitch of calculator"
		self.calculator.switchOff()	
		

	
	def test_add(self):
		self.calculator.add(1)
		self.calculator.add(1)
		self.assertEqual(self.calculator.getResult(), 2)
	

	def test_subtract(self):
		self.calculator.add(10)
		self.calculator.subtract(2)
		self.assertEqual(self.calculator.getResult(), 8)

	
	def test_divide(self):
		self.calculator.add(8)
		self.calculator.divide(2)
		self.assertEqual(self.calculator.getResult(), 4)

	
	def test_divideByZero(self):		
		self.assertRaises(ZeroDivisionError, self.calculator.divide, 0)
	
	
	#def test_squareRoot(self):
	#	self.calculator.squareRoot(100)
	#	self.assertEqual(calculator.getResult(), 10)

	
	def test_multiply(self):
		self.calculator.add(10)
		self.calculator.multiply(10)
		self.assertEqual(self.calculator.getResult(), 100)


if __name__ == '__main__':
	unittest.main()
