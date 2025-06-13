class Vehicle:
    def fuelType(self):
        print("Runs on petrol")

# class Car(Vehicle):
#     def __init__(self, brand):
#         self.brand = brand
#         print(self.brand)

#     def brandName(self, b):
#         self.brand = b
#         print("Brand name is", self.brand)

# car1 = Car("AUDI")

# car1.fuelType()  

# car1.brandName("BMW")


# class newcar(Vehicle):
#     def fuelType(this):
#         super().fuelType()
#         print("disel")


# newc = newcar()
# newc.fuelType()


# class A:
#     def show(self):
#         print("A")

# class B(A):
#     def show(self):
#         super().show()

# class C(B):
#     def show(self):
#         super().show() 

# class D(C):
#     pass

# D = D()
# D.show()


# class n:
#     def __new__(this, *args,**kwargs):
#         print("new mem")
#         return super().__new__(this)


# n1 = n(10,30,99)

# def __str__(self):
#     return f"Car:{self.brand}:{self.model}"


class vehicle:
    def __init__(self, b):
        self.b = b
        print("1", self.b)
    
    def __str__(self):
        return f"2 {self.b}"

class car(vehicle):
    def __init__(self, b, m):
        super().__init__(b)
        self.m = m
        print("3")
    
    def __str__(self):
        return f"4 {self.m}"

# Create an instance
car1 = car("MERC", "S-CLASS")
car2 = vehicle("JAG")
car2
print(car1)  

