# class Vehicle:
#     def fuel_type(self):
#         self.a = 10
#         print("Generic fuel")

# class Car(Vehicle):
#     def fuel_type(self):
#         super().fuel_type()
#         print("Super calls", self.a)

#     def brandName(self,name):
#         self.name = name
#         print(self.name)


# car1 = Car()
# car1.fuel_type()
# car1.brandName("MERC")


# class vehicle:
#     def start(this):
#         print("parent")
# class car(vehicle):
#     def start(this):
#         print("Child")
# def normal_start(obj):
#     obj.start()


# v = vehicle()
# c = car()

# normal_start(v)
# normal_start(c)


class car:
    def __init__(self,brand):
        self.__brand = brand
        print(self.__brand)

    def get_brand(self):
        return self.__brand

car1 = car("BMW")
print(car1)
print(car1.get_brand())