class Car:
      def __init__(self,colour: str,mileage: str):
            self.colour=colour
            self.mileage=mileage

      def __str__(self):
            return (f"The {self.colour} car has {self.mileage}")

obj1=Car("blue","20,000 miles")
obj2=Car('red','30,000 miles')  
print(obj1)
print(obj2)
