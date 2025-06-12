# class Person:
#     def __init__(this, name, age):
#         this.name = name
#         this.age = age
#         this.display_details() 
#         print("heelo")

#     def display_details(this):
#         print(f"Name:{this.name}, age: {this.age}")

# person1 = Person("ABCS", 34)

#person1.display_details()


# class newPerson:
#     def __init__(self,name,age):
#         self.name = name
#         self.age = age
#     def 
#     def rnd(this, *args):
#         return sum(args)

class callMe:
    def hello(self):
        print("Parent class")

class callme2(callMe):
    def hello2(self):
        super().hello()  
        print("Child class")


newObj = callme2()
newObj.hello2() 

# print(newObj.rnd(2,3))
# print(newObj.rnd(15,90,9))

